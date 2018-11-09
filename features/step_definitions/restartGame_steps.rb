Given("estoy en la pagina de jugar") do
    visit('/game?modality=1&numberPlayers=2&name11=Jugador+1&name12=Jugador+2&name13=Jugador+3&name14=Jugador+4')
end

  When("presiono el boton {string}") do |string|
    find(:xpath, '//*[@id="'+string+'"]').click
  end

  Then("mi puntaje deberia estar en {int}") do |score|
    expect(page).to have_content(score)
  end