require './lib/player'

describe 'Pruebas de la clase Player' do

    before :each do |single|
        @player = Player.new("GoDiegoGo", 0)
    end

    it "deberia crearse un jugador con el nombre 'GoDiegoGo'" do
        expect(@player.getName).to eq 'GoDiegoGo'
    end

    it "deberia crearse un jugador con un score de '0'" do
        expect(@player.getScore).to eq 0
    end

end