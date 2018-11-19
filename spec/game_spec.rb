require './lib/game'

describe "Pruebas de la clase Game" do

    before :each do |single|
        @game = Game.new(7, 7, 2, "Jugadores 1, Jugadores 2", "avatar1.jpg,avatar2.jpg")
    end

    it "deberia crearse un tabler de '7' filas" do
        expect(@game.getBoard.getRows).to eq 7
    end

    it "deberia crearse un tabler de '7' columnas" do
        expect(@game.getBoard.getColumns).to eq 7
    end

    it "deberia crease un tablero para '2' jugadores" do
        expect(@game.getPlayers.length).to eq 2
    end

    it "deberian crearse dos avatares" do
        expect(@game.getAvatars.length).to eq 2
    end

    it "deberia obtener al jugador que esta ganando actualmente" do
        expect(@game.getWinner[1].getName).to eq "Jugadores 1"
    end

    it "el avatar de el usuario '1' deberia ser 'avatar1.jpg'" do
        expect(@game.getAvatarOfUser(1)).to eq "avatar1.jpg"
    end

    it "el avatar de el usuario '2' deberia ser 'avatar2.jpg'" do
        expect(@game.getAvatarOfUser(2)).to eq "avatar2.jpg"
    end

end
