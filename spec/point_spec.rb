require './lib/point'

describe 'Pruebas de la clase Point' do

    before :each do |single|
        @point = Point.new(7, 7, 7)
    end

    it "deberia crearse un punto con su posicion x igual '7'" do
        expect(@point.getPosX()).to eq 7
    end

    it "deberia crearse un punto con su posicion y igual '7'" do
        expect(@point.getPosY()).to eq 7
    end

    it "deberia crearse un punto con un radio igual '7'" do
        expect(@point.getRadio()).to eq 7
    end

end