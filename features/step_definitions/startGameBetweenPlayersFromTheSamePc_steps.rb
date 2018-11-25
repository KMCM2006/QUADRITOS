Given("visito la pagina del juego con {string} jugadores") do |players|
    visit('/game?modality=1&numberPlayers='+players+'&numberBoardSize=7&name11=Jugador+1&avatar11=avatar1.jpg&name12=Jugador+2&avatar12=avatar1.jpg&name13=Jugador+3&avatar13=avatar1.jpg&name14=Jugador+4&avatar14=avatar1.jpg')
  end

Then("se ve el logo del juego") do
    expect(page).to have_xpath('/html/body/nav/div[1]')
end

Then("se ve el nombre del {string}") do |player|
    expect(page).to have_content(player)
end

Then("se ve el avatar del Jugador {int}") do |int|
    expect(page).to have_selector('#avatar-' + int.to_s, visible: true)
end

Then("se ve el puntaje de Jugador {int} inicializado en {int}") do |player, score|
    find("//*[@id='score-" + player.to_s + "']").text.should eq(score.to_s)
end

Then("se ve la opcion de {string}") do |settings|
    expect(page).to have_content(settings)
end

Then("se ve el tablero vacio") do
    expect(page).to have_xpath('/html/body/div/div');
end