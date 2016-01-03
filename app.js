var express = require('express');
var path = require('path');
var webpack = require('webpack');
var app = express();

var isDevelopment = (process.env.NODE_ENV !== 'production');
var static_path = path.join(__dirname, 'public');

app.use(express.static(static_path))
  .get('*', function (req, res) {
    res.sendFile('index.html', {
      root: static_path
    });
  }).listen(process.env.PORT || 8080, function (err) {
    if (err) { console.log(err) };
    console.log('Listening at localhost:8080');
  });

if (isDevelopment) {
  var config = require('./webpack.config');
  var WebpackDevServer = require('webpack-dev-server');

  new WebpackDevServer(webpack(config), {
    contentBase: config.output.path,
    publicPath: config.output.path,
    hot: true
  }).listen(5000, 'localhost', function (err, result) {
    if (err) { console.log(err) }
    console.log('Listening at localhost:5000');
  });
}

// var http = require("http");
// var fs = require("fs");
// var path = require("path");
// var mime = require("mime");
// var cache = {};
//
// // Handles 404 errors
// function send404(response) {
//   response.writeHead(404, {'Content-Type': 'text/plain'});
//   response.write('Error 404: resource not found.');
//   response.end();
// }
//
// // Serves file data
// function sendFile(response, filePath, fileContents) {
//   response.writeHead(200, {"content-type": mime.lookup(path.basename(filePath))} );
//   response.end(fileContents);
// }
//
// // Cache's static files and serves files from memory
// function serveStatic(response, cache, absPath) {
//   if (cache[absPath]) {                            // Check if file is cached in memory
//     sendFile(response, absPath, cache[absPath]);   // Serve file from memory
//   } else {
//     fs.exists(absPath, function(exists) {
//       if (exists) {                                // Check if file exists on disk
//         fs.readFile(absPath, function(err, data) { // Read file from disk
//           if (err) {
//             send404(response);                     // Should report error here...
//           } else {
//             cache[absPath] = data;
//             sendFile(response, absPath, data);     // Serve file read from disk
//           }
//         });
//       } else {
//         send404(response);                         // Send 404 if file not found
//       }
//     });
//   }
// }
//
// var server = http.createServer(function(request, response) {	// Create HTTP server
// 	var filePath = false;
// 	if (request.url == "/") {
// 		filePath = "public/index.html"; 	  // Determine HTML file to be served by default
// 	} else {
// 		filePath = "public" + request.url; // Translate URL path to relative file path
// 	}
// 	var absPath = "./" + filePath; 			 // Prepend "./" to avoid relative path confusion
// 	serveStatic(response, cache, absPath);
// });
//
// // start the server
// server.listen(5000, function() {
//   console.log("Server listening on port 5000");
// });
