require 'sinatra'

class App < Sinatra::Base

    get '/' do
        "Bienvenido"
    end

end