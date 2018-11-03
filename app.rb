require 'sinatra'

class App < Sinatra::Base

    get '/' do
        erb :welcome
    end

    post '/modality' do
        erb :modality
    end

    get '/check_in' do
        erb :check_in
    end
end