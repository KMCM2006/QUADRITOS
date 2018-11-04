require './lib/board'

describe 'Pruebas de la clase Board' do

    before :each do |single|
        @board = Board.new(7, 7)
    end

    it "deberia crearse un tablero con '7' filas" do
        expect(@board.getRows()).to eq 7
    end

    it "deberia crearse un tablero con '7' columnas" do
        expect(@board.getColumns()).to eq 7
    end

end