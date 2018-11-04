require './lib/line'

describe "Pruebas de la clase Line" do

    before :each do |single|
        @line = Line.new(10, 10, 20, 20, 1)
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

    it "deberia crearse una linea con su identificador igual '1'" do
        expect(@line.getLineId()).to eq 1
    end

end
