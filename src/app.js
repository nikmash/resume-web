//builtin imports
var fs = require('fs')
var path = require('path')

//npm imports
var express = require('express')
var favicon = require('serve-favicon')

//Set up Express
var app = express();
app.set('port', (process.env.PORT || 5000))
app.set('views', __dirname + '/views')
app.set('view engine', 'ejs')
app.use(express.static(__dirname + '/public'))

app.use(favicon(path.join(__dirname, 'public', 'img', 'favicon.ico')));

//dynaimally load routes based on files in controller/
fs.readdirSync('controllers').forEach(function(file) {
	if(file.split('.').pop() === 'js'){
		var route = require('./controllers/' + file)
		route.controller(app)
	}
})

app.listen(app.get('port'), function() {
  console.log("Node app is running at localhost:" + app.get('port'))
})
