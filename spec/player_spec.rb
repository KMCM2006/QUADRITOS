require './lib/player'

describe 'Pruebas de la clase Player' do

    before :each do |single|
        @player = Player.new("GoDiegoGo", 0, "avatar1.jpg")
    end

    it "deberia crearse un jugador con el nombre 'GoDiegoGo'" do
        expect(@player.getName).to eq 'GoDiegoGo'
    end

    it "deberia crearse un jugador con un score de '0'" do
        expect(@player.getScore).to eq 0
    end

    it "deberia crear un jugador con el avatar 'avatar1.jpg'" do
        expect(@player.getAvatar).to eq 'avatar1.jpg'
    end

end