require './lib/board'
require './lib/player'
class Game

    def initialize(rows, columns, numberPlayers, playersName, avatars)
        @board = Board.new(rows, columns)
        @playersName = playersName.split(',')
        @avatars = avatars.split(',')
        @players = Array[]
        for number in (1..numberPlayers) do
            @players.push([number, Player.new(@playersName[number-1], 0, @avatars[number-1])])
        end
    end

    def getBoard
        return @board
    end

    def getPlayers
        return @players
    end

    def getAvatars
        return @avatars
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