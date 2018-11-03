class Board

    def initialize(rows, columns)
        @rows = Array[]
        for number in (1..rows) do
            @rows.push(number)
        end
        @columns = Array[]
        for number in (1..columns) do
            @columns.push(number)
        end
    end

    def getRows()
        return @rows
    end

    def getColumns()
        return @columns
    end

end