require './lib/board'
require 'sinatra'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/modality' do
        erb :modality
    end

    get '/game' do
        numberOfPlayer = params[:numberOfPlayer]
        numberOfPlayer = numberOfPlayer.to_i
        player = Array[]
        for player in (1..numberOfPlayer) do
            player.push(["Player"+1.to_s, 3])
        end
        puts numberOfPlayer
        @board = Board.new(7, 7)
        erb :game
    end

end