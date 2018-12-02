class Player
    def initialize(name, score, avatar)
        @name = name
        @score = score
        @avatar = avatar
    end

    def getName()
        return @name
    end

    def getScore()
        return @score
    end

    def getAvatar()
        return @avatar
    end

    def incrementScore()
        @score = @score + 1
    end
end