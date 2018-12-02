require './lib/line'

describe "Pruebas de la clase Line" do

    before :each do |single|
        @line = Line.new(10, 10, 20, 20)
    end

    it "deberia crearse una linea con su posicion x1 igual '10'" do
        expect(@line.getPosX1()).to eq 10
    end

    it "deberia crearse una linea con su posicion x2 igual '10'" do
        expect(@line.getPosX2()).to eq 10
    end

    it "deberia crearse una linea con su posicion y1 igual '20'" do
        expect(@line.getPosY1()).to eq 20
    end

    it "deberia crearse una linea con su posicion y2 igual '20'" do
        expect(@line.getPosY2()).to eq 20
    end

    it "deberia crearse una linea que no este visible" do
        expect(@line.isItVisible()).to eq false
    end

    it "deberia hacerse visible" do
        @line.toVisible
        expect(@line.isItVisible()).to eq true
    end

    it "deberia retornar las posiciones de la linea" do
        expect(@line.getPositions()).to eq "10_10_20_20"
    end

end
