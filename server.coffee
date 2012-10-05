ns = require 'node-static'
http = require 'http'


files = new ns.Server '.'

server = http.createServer (req, res) ->
    console.log req.method, req.url
    key = req.url[1..]
    req.addListener 'end', () ->
        ###
        Serve files!
        ###
        files.serve req, res
  
server.listen 8000
console.log "EasyCoffee is listening on localhost:8000"



###              , (err, res) ->
  if (err) { # An error as occured *
      console.error("> Error serving " + request.url + " - " + err.message);
      response.writeHead(err.status, err.headers);
      response.end();
  } else { # The file was served successfully
      console.log("> " + request.url + " - " + res.message);
###