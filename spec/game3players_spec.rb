require './lib/game'

describe "Pruebas de la clase Game" do

    before :each do |single|
        @game = Game.new(7, 7, 3, "Kevin,Andres,Hero", "avatar1.jpg,avatar2.jpg,avatar3.jpg")
    end

    it "deberia crearse un tablero" do
        expect(@game).not_to eq be_empty
    end

    it "deberia crearse '3' jugadores" do
        expect(@game.getPlayers.length).to eq 3
    end

    it "deberian crearse '3' avatares" do
        expect(@game.getAvatars.length).to eq 3
    end

    it "el nombre de el jugador '1' deberia ser 'Kevin'" do
        expect(@game.getNameOfUser(1)).to eq "Kevin"
    end

    it "el nombre de el jugador '2' deberia ser 'Andres'" do
        expect(@game.getNameOfUser(2)).to eq "Andres"
    end

    it "el nombre de el jugador '3' deberia ser 'Hero'" do
        expect(@game.getNameOfUser(3)).to eq "Hero"
    end

    it "el score de el jugador '1' deberia ser '0'" do
        expect(@game.getScoreOfUser(1)).to eq 0
    end

    it "el score de el jugador '2' deberia ser '0'" do
        expect(@game.getScoreOfUser(2)).to eq 0
    end

    it "el score de el jugador '3' deberia ser '0'" do
        expect(@game.getScoreOfUser(3)).to eq 0
    end

    it "el avatar de el jugador '1' deberia ser 'avatar1.jpg'" do
        expect(@game.getAvatarOfUser(1)).to eq "avatar1.jpg"
    end

    it "el avatar de el jugador '2' deberia ser 'avatar2.jpg'" do
        expect(@game.getAvatarOfUser(2)).to eq "avatar2.jpg"
    end

    it "el avatar de el jugador '3' deberia ser 'avatar3.jpg'" do
        expect(@game.getAvatarOfUser(3)).to eq "avatar3.jpg"
    end

    it "al inicio del juego el 'Jugador1' deberia aparecer como el que va ganado" do
        expect(@game.getWinner[1].getName).to eq "Kevin"
    end

    it "de hacer un punto el 'Jugador1' deberia tener '1' punto" do
        @game.incrementScoreOfPlayer(1)
        expect(@game.getScoreOfUser(1)).to eq 1
    end

    it "de hacer un punto el 'Jugador2' deberia tener '1' punto" do
        @game.incrementScoreOfPlayer(2)
        expect(@game.getScoreOfUser(2)).to eq 1
    end

    it "de hacer un punto el 'Jugador3' deberia tener '1' punto" do
        @game.incrementScoreOfPlayer(3)
        expect(@game.getScoreOfUser(3)).to eq 1
    end

    it "de hacer un punto el 'Jugador1' deberia ir ganando el" do
        @game.incrementScoreOfPlayer(1)
        expect(@game.getWinner[1].getName).to eq "Kevin"
    end

    it "de hacer un punto el 'Jugador2' deberia ir ganando el" do
        @game.incrementScoreOfPlayer(2)
        expect(@game.getWinner[1].getName).to eq "Andres"
    end

    it "de hacer un punto el 'Jugador3' deberia ir ganando el" do
        @game.incrementScoreOfPlayer(3)
        expect(@game.getWinner[1].getName).to eq "Hero"
    end

    it "de hacer un punto dos puntos el jugador 'Jugador1' y un punto los otros dos deberia ir ganando el primer jugador" do
        @game.incrementScoreOfPlayer(1)
        @game.incrementScoreOfPlayer(2)
        @game.incrementScoreOfPlayer(3)
        @game.incrementScoreOfPlayer(1)
        expect(@game.getWinner[1].getName).to eq "Kevin"
    end

    it "de hacer un punto dos puntos el jugador 'Jugador2' y un punto los otros dos deberia ir ganando el segundo jugador" do
        @game.incrementScoreOfPlayer(1)
        @game.incrementScoreOfPlayer(2)
        @game.incrementScoreOfPlayer(3)
        @game.incrementScoreOfPlayer(2)
        expect(@game.getWinner[1].getName).to eq "Andres"
    end

    it "de hacer un punto dos puntos el jugador 'Jugador3' y un punto los otros dos deberia ir ganando el tercer jugador" do
        @game.incrementScoreOfPlayer(1)
        @game.incrementScoreOfPlayer(2)
        @game.incrementScoreOfPlayer(3)
        @game.incrementScoreOfPlayer(3)
        expect(@game.getWinner[1].getName).to eq "Hero"
    end

    it "en caso de empate, el 'Jugador1' aparece como el que va ganando" do
        @game.incrementScoreOfPlayer(1)
        @game.incrementScoreOfPlayer(2)
        @game.incrementScoreOfPlayer(1)
        @game.incrementScoreOfPlayer(2)
        @game.incrementScoreOfPlayer(3)
        @game.incrementScoreOfPlayer(3)
        expect(@game.getWinner[1].getName).to eq "Kevin"
    end
end
