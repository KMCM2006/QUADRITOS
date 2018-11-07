require './lib/board'
require './lib/player'
class Game

    def initialize(rows, columns, numberPlayers)
        @board = Board.new(rows, columns)
        @players = Array[]
        for number in (1..numberPlayers) do
            @players.push([number, Player.new("Jugador "+number.to_s, 0)])
        end
    end

    def getBoard
        return @board
    end

    def getPlayers
        return @players
    end

end