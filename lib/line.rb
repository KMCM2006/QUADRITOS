class Line

    def initialize(posX1, posX2, posY1, posY2, lineId)
        @posX1 = posX1
        @posX2 = posX2
        @posY1 = posY1
        @posY2 = posY2
        @lineId = lineId
    end

    def getPosX1
        return @posX1
    end

    def getPosX2
        return @posX2
    end

    def getPosY1
        return @posY1
    end

    def getPosY2
        return @posY2
    end

    def getLineId
        return @lineId
    end
    
end