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
end