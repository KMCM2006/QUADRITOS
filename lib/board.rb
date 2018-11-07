require './lib/point'
require './lib/line'
class Board

    def initialize(rows, columns)
        @rows = rows
        @columns = columns
        @interval = 50
        @points = Array[]
        for i in (1..@rows) do
            for j in (1..@columns) do
                @points.push(Point.new((i*@interval), (j*@interval), 10))
            end
        end
        @horizontalLines = Array[]
        @verticalLines = Array[]
        @lineId = 0
        for i in (1..@rows) do
            for j in (1..@columns-1) do
                @lineId = @lineId + 1
                @horizontalLines.push(Line.new((j*@interval), ((j+1)*@interval), @interval*i, @interval*i, @lineId))
                @lineId = @lineId + 1
                @verticalLines.push(Line.new(@interval*i, @interval*i,(j*@interval), ((j+1)*@interval), @lineId))
            end
        end
    end

    def verifySquare(lineId)
        puts lineId
        values = lineId.split('-')
        orientation = values[0]
        positions =values[1].split('_')
        if(orientation == 'H')
            verifiyHorizontalLineTop(positions)
        else
            puts "typeV"
        end
    end

    def verifiyHorizontalLineTop(positions)
        topPositionsH = Array[]
        rightPositionsV = Array[]
        leftPositionsV = Array[]
        topPositionsH[0] = positions[0]
        topPositionsH[1] = positions[1]
        topPositionsH[2] = (positions[2].to_i - 50).to_s
        topPositionsH[3] = (positions[3].to_i - 50).to_s
        rightPositionsV[0] = positions[1]
        rightPositionsV[1] = positions[1]
        rightPositionsV[2] = (positions[2].to_i - 50).to_s
        rightPositionsV[3] = positions[3]
        leftPositionsV[0] = positions[0]
        leftPositionsV[1] = positions[0]
        leftPositionsV[2] = (positions[2].to_i - 50).to_s
        leftPositionsV[3] = positions[3]
        if exitLineWithPositions(topPositionsH)
            && exitLineWithPositions(leftPositionsV)
            && exitLineWithPositions(rightPositionsV)
            return true
        else
            return false
        end
    end

    def verifiyHorizontalLineBotton(positions)
        bottonPositionsH = Array[]
        rightPositionsV = Array[]
        leftPositionsV = Array[]
        bottonPositionsH[0] = positions[0]
        bottonPositionsH[1] = positions[1]
        bottonPositionsH[2] = (positions[2].to_i - 50 + 100).to_s 
        bottonPositionsH[3] = (positions[3].to_i - 50 + 100).to_s
        rightPositionsV[0] = positions[1]
        rightPositionsV[1] = positions[1]
        rightPositionsV[2] = positions[2]
        rightPositionsV[3] = (positions[3].to_i - 50 + 100).to_s
        leftPositionsV[0] = positions[0]
        leftPositionsV[1] = positions[0]
        leftPositionsV[2] = positions[2]
        leftPositionsV[3] = (positions[3].to_i - 50 + 100).to_s
        if exitLineWithPositions(bottonPositionsH)
            && exitLineWithPositions(leftPositionsV)
            && exitLineWithPositions(rightPositionsV)
            return true
        else
            return false
        end
    end

    def verifyVerticalLineRight(positions)
        topPositionsH = Array[]
        bottonPositionsH = Array[]
        rightPositionsV = Array[]
        topPositionsH[0] = positions[0]
        topPositionsH[1] = (positions[0].to_i - 0 + 50).to_s
        topPositionsH[2] = positions[2]
        topPositionsH[3] = (positions[3].to_i - 50)
        bottonPositionsH[0] = positions[1]
        bottonPositionsH[1] = (positions[1].to_i - 0 + 50).to_s
        bottonPositionsH[2] = (positions[2].to_i - 0 + 50).to_s
        bottonPositionsH[3] = positions[3]
        rightPositionsV[0] = (positions[0].to_i - 50 + 100).to_s
        rightPositionsV[1] = (positions[1].to_i - 50 + 100).to_s
        rightPositionsV[2] = positions[2]
        rightPositionsV[3] = positions[3]
        if exitLineWithPositions(topPositionsH)
            && exitLineWithPositions(bottonPositionsH)
            && exitLineWithPositions(rightPositionsV)
            return true
        else
            return false
        end
    end

    def exitLineWithPositions(positions)
        positions.each do |position|
            if position.to_i < 50
                return false
            end
        end
        return true
    end

    def getPoints()
        return @points
    end

    def getHorizontalLines()
        return @horizontalLines
    end

    def getVerticalLines()
        return @verticalLines
    end

    def getRows()
        return @rows
    end

    def getColumns()
        return @columns
    end

end