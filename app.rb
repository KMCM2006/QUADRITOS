require './lib/board'
require './lib/player'
require 'sinatra'

class App < Sinatra::Base

    $board
    @username
    @password
    @confirmPassword

    get '/' do
        erb :welcome
    end

    get '/modality' do
        @username = params[:user]
        @password = params[:password]
        @confirmPassword = params[:confirmPassword]
        if(@password != @confirmPassword) 
            redirect '/register'
        else
            erb :modality
        end
    end

    get '/register' do
        erb :register
    end

    get '/game' do
        modality = params[:modality]
        if(modality == "1")
            numberPlayers = params[:numberPlayers]
            numberPlayers = numberPlayers.to_i
            @players = Array[]
            for number in (1..numberPlayers) do
                @players.push([number, Player.new("Jugador "+number.to_s, 0)])
            end
            $board = Board.new(7, 7)
            erb :game
        else
            redirect '/modality'
        end
    end

    get '/verify-square' do
        response = $board.verifySquare(params[:positions])
        return response
    end

end