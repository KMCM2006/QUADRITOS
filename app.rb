require './lib/game'
require 'sinatra'
require "sinatra/activerecord"

configure :development do
    set :database, {:adapter => "sqlite3", database: "quadritos.sqlite3"}
end
configure :production do
    set :database, {:adapter => "postgresql", :host => "ec2-75-101-138-26.compute-1.amazonaws.com", :username => "lalqowuabtegfa", :password => "95eccb3192f5caf077b1a090b407369cfac04af1bee689f387ab95a0c1494478", :database => "postgres://lalqowuabtegfa:95eccb3192f5caf077b1a090b407369cfac04af1bee689f387ab95a0c1494478@ec2-75-101-138-26.compute-1.amazonaws.com:5432/d8g56bj6362n38"}
end

class User < ActiveRecord::Base
end

class Score < ActiveRecord::Base
end 

class App < Sinatra::Base
    register Sinatra::ActiveRecordExtension

    $game
    @username
    @password
    @confirmPassword

    get '/save' do
        @score = Score.new
        @score.avatar = "avatar"
        @score.name = "baymax"
        @score.points = "100"
        @score.save()
    end
    
    get '/list' do
        @scores = Score.all
        erb :scores
    end

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

    get '/logIn' do
        erb :logIn
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

    get '/scores' do
        erb :score
    end
end
