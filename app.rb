require 'sinatra'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/modality' do
        erb :modality
    end

    get '/game' do
        erb :game
    end

end