require './lib/board'
require './lib/player'
require 'sinatra'

class App < Sinatra::Base

    get '/' do
        erb :welcome
    end

    get '/modality' do
        erb :modality
    end

    get '/register' do
        erb :register
    end

    get '/game' do
        numberOfPlayer = params[:numberOfPlayer]
        numberOfPlayer = numberOfPlayer.to_i
        @players = Array[]
        for number in (1..numberOfPlayer) do
            @players.push([number, "Jugador "+number.to_s, 0])
        end
        puts numberOfPlayer
        @board = Board.new(7, 7)
        erb :game
    end

end