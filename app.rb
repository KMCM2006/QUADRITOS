require './lib/game'
require 'sinatra'
require "sinatra/activerecord"

configure :development do
    set :database, {:adapter => "sqlite3", database: "quadritos.sqlite3"}
end
configure :test do
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

    get '/' do
        erb :welcome
    end

    get '/modality' do
        @username = params[:user]
        @password = params[:password]
        @confirmPassword = params[:confirmPassword]
        if($currentUser == nil)
            erb :modality
        else
            @username = $currentUser.name
            erb :modality
        end
    end

    get '/register' do
        erb :register
    end

    get '/save-user' do
        $name = params[:user]
        $password = params[:password]
        $confirmPassword = params[:confirmPassword]
        if $password == $confirmPassword 
            $currentUser = User.new
            $currentUser.name = $name
            $currentUser.password = $password
            $currentUser.save()
            redirect '/modality'
        else
            redirect '/register'
        end
    end

    get '/find-user' do
        $name = params[:user]
        $password = params[:password]
        $currentUser = User.find_by(name: $name)
        if $currentUser != nil
            if $currentUser.password == $password
                redirect '/modality'
            else
                redirect '/logIn'
            end
        else
            redirect '/register'
        end
    end

    get '/logIn' do
        erb :logIn
    end

    get '/game' do
        $modality = params[:modality]
        if($modality == "1")
            $numberPlayers = params[:numberPlayers]
            $numberBoardSize = params[:numberBoardSize]
            $player1 = params[:name11]
            $player2 = params[:name12]
            $player3 = params[:name13]
            $player4 = params[:name14]
            $avatar1 = params[:avatar11]
            $avatar2 = params[:avatar12]
            $avatar3 = params[:avatar13]
            $avatar4 = params[:avatar14]
            $avatars = $avatar1 + "," + $avatar2 + "," + $avatar3 + "," + $avatar4
            $playersName = $player1 + "," + $player2 + "," + $player3 + "," + $player4
            $numberPlayers = $numberPlayers.to_i
            $numberBoardSize = $numberBoardSize.to_i
            $game = Game.new($numberBoardSize, $numberBoardSize, $numberPlayers, $playersName, $avatars)
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
            position = $game.getBoard.getPositionsOfSquare(params[:positions], response)
            avatar = $game.getAvatarOfUser(params[:currentTurn])
        end
        return "{\"response\": \""+ response + "\", \"winner\": \""+ winner.to_s + "\", \"ended\": \""+ ended.to_s + "\", \"position\": \""+ position.to_s + "\", \"avatar\": \""+ avatar.to_s + "\"}"
    end

    get '/save-score' do
        score = Score.new
        score.name = $game.getWinner[1].getName
        score.avatar = $game.getWinner[1].getAvatar
        score.points = $game.getWinner[1].getScore
        score.save()
    end

    get '/scores' do
        @scores = Score.all
        erb :score
    end

    get '/edit' do
        erb :edit
    end

    get '/log-out' do
        $currentUser = nil
        redirect '/'
    end
end
