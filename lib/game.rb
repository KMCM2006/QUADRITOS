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

    def incrementScoreOfPlayer(currentTurn)
        if(currentTurn.to_i == 0)
            @players[@players.length.to_i-1][1].incrementScore
        end
        @players[currentTurn.to_i][1].incrementScore
    end

end