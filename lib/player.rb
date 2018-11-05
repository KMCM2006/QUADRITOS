class Player
    def initialize(name, score)
        @name = name
        @score = score
    end

    def getName()
        return @name
    end

    def getScore()
        return @score
    end

    def incrementScore()
        puts "incrementScore"
        @score = @score + 1
    end
end