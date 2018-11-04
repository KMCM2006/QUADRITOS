require './lib/point'
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