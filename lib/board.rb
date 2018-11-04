require './lib/point'
require './lib/line'
class Board

    def initialize(rows, columns)
        @points = Array[]
        for i in (1..rows) do
            for j in (1..columns) do
                @points.push(Point.new((i*40), (j*40), 5))
            end
        end
        @horizontalLines = Array[]
        @verticalLines = Array[]
        for i in (1..rows) do
            for j in (1..columns-1) do
                @horizontalLines.push(Line.new((j*40), ((j+1)*40), 40*i, 40*i))
                @verticalLines.push(Line.new(40*i, 40*i,(j*40), ((j+1)*40)))
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

end