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

    it "deberia hacerse visible la linea en la orientacion 'V' con las posiciones '350 350 50 100'" do
        @board.udpateLine('V',[350, 350, 50, 100])
        expect(@board.isLineVisible('V',[350, 350, 50, 100])).to eq true
    end

    it "deberia hacerse visible la linea en la orientacion 'H' con las posiciones '300 350 100 100'" do
        @board.udpateLine('H',[300, 350, 100, 100])
        expect(@board.isLineVisible('H',[300, 350, 100, 100])).to eq true
    end

    it "deberia verificar que la linea con las posiciones '0 100 0 100' sea invalida" do
        expect(@board.isLineValid([0, 100, 0, 100])).to eq false
    end

    it "deberia verificar que la linea con las posiciones '300 350 100 100' sea valida'" do
        expect(@board.isLineValid([300, 350, 100, 100])).to eq true
    end

    it 'deberia devolver true al armar un cuadrado para el caso vertical derecha' do
        @board.udpateLine('V',[350, 350, 50, 100])
        @board.udpateLine('H',[300, 350, 50, 50])
        @board.udpateLine('V',[300, 300, 50, 100])
        @board.udpateLine('H',[300, 350, 100, 100])
        expect(@board.verifyVerticalLineRight([350, 350, 50, 100])).to eq true
    end

    it 'deberia devolver true al armar un cuadrado para el caso vertical izquierda' do
        @board.udpateLine('V',[350, 350, 50, 100])
        @board.udpateLine('H',[300, 350, 50, 50])
        @board.udpateLine('V',[300, 300, 50, 100])
        @board.udpateLine('H',[300, 350, 100, 100])
        expect(@board.verifyVerticalLineLeft([300, 300, 50, 100])).to eq true
    end

    it 'deberia devolver true al armar un cuadrado para el caso horizontal superior' do
        @board.udpateLine('V',[350, 350, 50, 100])
        @board.udpateLine('H',[300, 350, 50, 50])
        @board.udpateLine('V',[300, 300, 50, 100])
        @board.udpateLine('H',[300, 350, 100, 100])
        expect(@board.verifiyHorizontalLineTop([300, 350, 100, 100])).to eq true
    end

    it 'deberia devolver true al armar un cuadrado para el caso horizontal inferior' do
        @board.udpateLine('V',[350, 350, 50, 100])
        @board.udpateLine('H',[300, 350, 50, 50])
        @board.udpateLine('V',[300, 300, 50, 100])
        @board.udpateLine('H',[300, 350, 100, 100])
        expect(@board.verifiyHorizontalLineBotton([300, 350, 50, 50])).to eq true
    end

    it 'deberia retornar false al preguntar si el juego termino' do
        expect(@board.endedTheGame).to eq false
    end

end