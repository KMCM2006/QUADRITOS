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