var http = require('http'),
    fs = require('fs');


fs.readFile('./UserView.html', function (err, html) {
    if (err) {
        throw err; 
    }       
    http.createServer(function(request, response) {  
    	console.log('request was made: ' + request.url);	
        response.writeHeader(200, {"Content-Type": "text/html"});  
        response.write(html);  
    }).listen(3000, '127.0.0.1');
});

console.log('Dinner\'s ready!')