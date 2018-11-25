require './lib/game'

describe "Pruebas de la clase Game" do

    before :each do |single|
        @game = Game.new(7, 7, 2, "Kevin,Andres", "avatar1.jpg,avatar2.jpg")
    end

    it "deberia crearse un tablero" do
        expect(@game.getBoard).not_to eq be_empty
    end

    it "deberian crearse '2' jugadores" do
        expect(@game.getPlayers).not_to eq be_empty
        expect(@game.getPlayers.length).to eq 2
    end

    it "deberian crearse '2' avatares" do
        expect(@game.getAvatars).not_to eq be_empty
        expect(@game.getAvatars.length).to eq 2
    end

    it "el nombre de el jugador '1' deberia ser 'Kevin'" do
        expect(@game.getNameOfUser(1)).to eq "Kevin"
    end

    it "el nombre de el jugador '2' deberia ser 'Andres'" do
        expect(@game.getNameOfUser(2)).to eq "Andres"
    end

    it "el score de el jugador '1' deberia ser '0'" do
        expect(@game.getScoreOfUser(1)).to eq 0
    end

    it "el score de el jugador '2' deberia ser '0'" do
        expect(@game.getScoreOfUser(2)).to eq 0
    end

    it "el avatar de el jugador '1' deberia ser 'avatar1.jpg'" do
        expect(@game.getAvatarOfUser(1)).to eq "avatar1.jpg"
    end

    it "el avatar de el jugador '2' deberia ser 'avatar2.jpg'" do
        expect(@game.getAvatarOfUser(2)).to eq "avatar2.jpg"
    end

    it "al inicio del juego el 'Kevin' deberia aparecer como el que va ganado" do
        expect(@game.getWinner[1].getName).to eq "Kevin"
    end

    it "de hacer un punto el 'Kevin' deberia tener '1' punto" do
        @game.incrementScoreOfPlayer(1)
        expect(@game.getScoreOfUser(1)).to eq 1
    end

    it "de hacer un punto el 'Andres' deberia tener '1' punto" do
        @game.incrementScoreOfPlayer(2)
        expect(@game.getScoreOfUser(2)).to eq 1
    end

    it "de hacer un punto el 'Kevin' deberia ir ganando el" do
        @game.incrementScoreOfPlayer(1)
        expect(@game.getWinner[1].getName).to eq "Kevin"
    end

    it "de hacer un punto el 'Andres' deberia ir ganando el" do
        @game.incrementScoreOfPlayer(2)
        expect(@game.getWinner[1].getName).to eq "Andres"
    end

    it "de hacer un punto el 'Kevin' y dos puntos el 'Andres' deberia ir ganando el segundo" do
        @game.incrementScoreOfPlayer(1)
        @game.incrementScoreOfPlayer(2)
        @game.incrementScoreOfPlayer(2)
        expect(@game.getWinner[1].getName).to eq "Andres"
    end

    it "de hacer un punto el 'Andres' y dos puntos el 'Kevin' deberia ir ganando el primero" do
        @game.incrementScoreOfPlayer(1)
        @game.incrementScoreOfPlayer(2)
        @game.incrementScoreOfPlayer(1)
        expect(@game.getWinner[1].getName).to eq "Kevin"
    end

    it "en caso de empate, el 'Kevin' aparece como el que va ganando" do
        @game.incrementScoreOfPlayer(1)
        @game.incrementScoreOfPlayer(2)
        @game.incrementScoreOfPlayer(1)
        @game.incrementScoreOfPlayer(2)
        expect(@game.getWinner[1].getName).to eq "Kevin"
    end
end
