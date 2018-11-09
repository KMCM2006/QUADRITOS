require './lib/game'
require 'sinatra'

class App < Sinatra::Base

    $game
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
        $modality = params[:modality]
        if($modality == "1")
            $numberPlayers = params[:numberPlayers]
            $player1 = params[:name11]
            $player2 = params[:name12]
            $player3 = params[:name13]
            $player4 = params[:name14]
            $playersName = $player1 + "," + $player2 + "," + $player3 + "," + $player4
            puts $playersName
            $numberPlayers = $numberPlayers.to_i
            $game = Game.new(7, 7, $numberPlayers, $playersName)
            erb :game
        else
            redirect '/modality'
        end
    end

    get '/verify-square' do
        response = $game.getBoard.verifySquare(params[:positions])
        winner = "0"
        ended = ""
        if response.include? 'true'
            $game.incrementScoreOfPlayer(params[:currentTurn])
            winner = $game.getWinner[0]
            ended = $game.getBoard.endedTheGame
        end
        return "{\"response\": \""+ response + "\", \"winner\": \""+ winner.to_s + "\", \"ended\": \""+ ended.to_s + "\"}"
    end

end