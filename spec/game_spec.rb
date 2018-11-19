require './lib/game'

describe "Pruebas de la clase Game" do

    before :each do |single|
        @game = Game.new(7, 7, 2, "Jugadores 1, Jugadores 2", "avatar1, avatar2")
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

end
