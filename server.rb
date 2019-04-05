require 'xmlrpc/server'
require 'socket'
require_relative 'serverdata.rb'

class GameClientRequestHandler
    def GetServerResponse(inputMessage)
        {
            "response" => "Server: #{inputMessage}"
        }
    end
end

class GameServer
    @@port = 8080
    @@game_stats_file_path = "GameStats.xml"
    @RPCServer # this is the XMLRPC server instance
    # Loads all the files
    def Init()
    end

    # Gets ready to accept requests from client
    def StartServer()
        @RPCServer = XMLRPC::Server.new(@@port)
        @RPCServer.add_handler("GameServer.GetServerResponse", GameClientRequestHandler.new)
        PrintServerInfo()
        @RPCServer.serve
    end

    # Saves all the files to drive
    def WindDown()
    end

    private 
    def PrintServerInfo()
        puts "Game Server initialized at port: #{@@port} and address: \n"
        ipadrr = Socket.ip_address_list.select{|intf| intf.ipv4?}
        ipadrr.each do |ipadrrEach|
            puts ipadrrEach.ip_address
        end
    end

end

gameServer = GameServer.new
gameServer.StartServer