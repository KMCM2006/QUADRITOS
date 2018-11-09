require './lib/board'
require './lib/player'
class Game

    def initialize(rows, columns, numberPlayers, playersName)
        @board = Board.new(rows, columns)
        @playersName = playersName.split(',')
        @players = Array[]
        for number in (1..numberPlayers) do
            @players.push([number, Player.new(@playersName[number-1], 0)])
        end
    end

    def getBoard
        return @board
    end

    def getPlayers
        return @players
    end

    def incrementScoreOfPlayer(currentTurn)
        currentTurn = currentTurn.to_i
        @players.each do |number, player|
            if number == currentTurn
                player.incrementScore
            end
        end
    end

    def getWinner()
        @players.max_by do |number, player|
            player.getScore
        end
    end

end