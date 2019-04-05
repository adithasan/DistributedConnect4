require 'xmlrpc/client'

host = "localhost"
port = "8080"
urlEndPoint="http://"+host+"/"+port

server = XMLRPC::Client.new("localhost", "/", 8080)

input = "Client says hello\n"
gameServer = server.proxy("GameServer.GetServerResponse")
result = gameServer.GetServerResponse(input)

puts result["response"]