var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var request = require("request");
var jsonfile = require('jsonfile');
var mysql = require('mysql');
var dateTime = require('node-datetime');

var dt = dateTime.create();

var index = require('./routes/index');
var users = require('./routes/users');

var app = express();
var file = path.join(__dirname, 'tmp/data.json');
var jpf = path.join(__dirname, 'tmp/data.jsonp');

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
var pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'netprg',
    charset: 'utf8mb4'
});
// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', index);
app.use('/users', users);
app.get('/:keyword/pic.html', function (req, res) {
    var index_rand = Math.floor(Math.random() * Math.floor(100));
    var api = 'https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=21f0ece9f92e0a3f47c6f113987124e6&text=';
    var Q_string = api + req.params.keyword + '&media=photos&per_page=100&format=json&nojsoncallback=1';
    console.log('request url :', Q_string);
    request(Q_string, function (error, response, body) {

        var data = JSON.parse(body);
        //console.log('body:', body);

        var index = index_rand;
        console.log('fetch');
        console.log('index:', index);
        var farm = data.photos.photo[index]['farm'];
        var id = data.photos.photo[index]['id'];
        var secret = data.photos.photo[index]['secret'];
        var server = data.photos.photo[index]['server'];
        var title = data.photos.photo[index]['title'];
        var p_source = 'https://farm' + farm + '.staticflickr.com/' + server + '/' + id + '_' + secret + '.jpg';
        console.log('photo url :', p_source);

        pool.getConnection(function (err, connection) {
            // Use the connection
            console.log("Connected!");
            var formatted = dt.format('Y-m-d H:M:S');
            console.log(formatted);
            var value = "'html','" + req.params.keyword.toString() + "','" + p_source.toString() + "'";
            var sql = "INSERT INTO history (type,keyword,url) VALUES (" + value + ")";
            console.log(sql);
            connection.query(sql, function (error, results, fields) {
                // And done with the connection.
                connection.release();

                // Handle error after the release.
                if (error) throw error;

                // Don't use the connection here, it has been returned to the pool.
            });
        });
        // Print the HTML for the Google homepage.
        res.render('pic', {title: title, photo: p_source});
    });
});
app.get('/:keyword/pic.json', function (req, res) {
    var index_rand = Math.floor(Math.random() * Math.floor(100));
    var api = 'https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=21f0ece9f92e0a3f47c6f113987124e6&text=';
    var Q_string = api + req.params.keyword + '&media=photos&per_page=100&format=json&nojsoncallback=1';
    console.log('request url :', Q_string);
    request(Q_string, function (error, response, body) {

        var data = JSON.parse(body);
        //console.log('body:', body);

        var index = index_rand;
        console.log('fetch');
        console.log('index:', index);
        var farm = data.photos.photo[index]['farm'];
        var id = data.photos.photo[index]['id'];
        var secret = data.photos.photo[index]['secret'];
        var server = data.photos.photo[index]['server'];
        var title = data.photos.photo[index]['title'];
        var p_source = 'https://farm' + farm + '.staticflickr.com/' + server + '/' + id + '_' + secret + '.jpg';
        console.log('photo url :', p_source);
        pool.getConnection(function (err, connection) {
            // Use the connection
            console.log("Connected!");
            var formatted = dt.format('Y-m-d H:M:S');
            console.log(formatted);
            var value = "'json','" + req.params.keyword.toString() + "','" + p_source.toString() + "'";
            var sql = "INSERT INTO history (type,keyword,url) VALUES (" + value + ")";
            console.log(sql);
            connection.query(sql, function (error, results, fields) {
                // And done with the connection.
                connection.release();

                // Handle error after the release.
                if (error) throw error;

                // Don't use the connection here, it has been returned to the pool.
            });
        });
        var obj = {"title": title, "pic": p_source};
        jsonfile.writeFile(file, obj, function (err) {
            console.error(err)
        });

    });
    // res.render('json', {out: req.params.keyword});

    res.sendFile(path.join(__dirname, 'tmp/data.json'));

});

app.get('/:keyword/:callback/pic.jsonp', function (req, res) {
    var index_rand = Math.floor(Math.random() * Math.floor(100));
    var api = 'https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=21f0ece9f92e0a3f47c6f113987124e6&text=';
    var Q_string = api + req.params.keyword + '&media=photos&per_page=100&format=json&nojsoncallback=1';
    console.log('request url :', Q_string);
    request(Q_string, function (error, response, body) {

        var data = JSON.parse(body);
        //console.log('body:', body);

        var index = index_rand;
        console.log('fetch');
        console.log('index:', index);
        var farm = data.photos.photo[index]['farm'];
        var id = data.photos.photo[index]['id'];
        var secret = data.photos.photo[index]['secret'];
        var server = data.photos.photo[index]['server'];
        var title = data.photos.photo[index]['title'];
        var p_source = 'https://farm' + farm + '.staticflickr.com/' + server + '/' + id + '_' + secret + '.jpg';
        console.log('photo url :', p_source);
        pool.getConnection(function (err, connection) {
            // Use the connection
            console.log("Connected!");
            var formatted = dt.format('Y-m-d H:M:S');
            console.log(formatted);
            var value = "'jsonp','" + req.params.keyword.toString() + "','" + p_source.toString() + "'";
            var sql = "INSERT INTO history (type,keyword,url) VALUES (" + value + ")";
            console.log(sql);
            connection.query(sql, function (error, results, fields) {
                // And done with the connection.
                connection.release();

                // Handle error after the release.
                if (error) throw error;

                // Don't use the connection here, it has been returned to the pool.
            });
        });
        var obj = {"title": title, "pic": p_source};
        var jsonp = req.params.callback + '(' + JSON.stringify(obj) + ");";
        // jsonfile.writeFile(jpf, jsonp, function (err) {
        //     console.error(err)
        // });
        // app.set('jsonp callback name', req.params.callback);
        console.log("jsonp",jsonp);
        res.jsonp(jsonp);
    });
    // res.sendFile(path.join(__dirname, 'tmp/data.jsonp'));

});


// app.get('/:key_word/:callback/pic.jsonp', function (req, res) {
//     res.send(req.params)
// });
app.get('/history.html', function (req, res) {
    pool.query('SELECT * FROM `history` ORDER BY `history`.`time` DESC LIMIT 10', function(err, results) {
        if (err) throw err;
        console.log(results);
        res.render('history', {lists: results});
    });

});


// catch 404 and forward to error handler
app.use(function (req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

// error handler
app.use(function (err, req, res, next) {
    // set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = req.app.get('env') === 'development' ? err : {};

    // render the error page
    res.status(err.status || 500);
    res.render('error');
});


module.exports = app;
