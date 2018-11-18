Given("estoy en la pagina de jugar") do
  visit('/game?modality=1&numberPlayers=2&name11=Jugador+1&avatar11=avatar1.jpg&name12=Jugador+2&avatar12=avatar1.jpg&name13=Jugador+3&avatar13=avatar1.jpg&name14=Jugador+4&avatar14=avatar1.jpg')
end

  When("presiono el boton {string}") do |string|
    page.find(:xpath, '//*[@id="'+string+'"]').click
  end

  Then("mi puntaje deberia estar en {int}") do |score|
    expect(page).to have_content(score)
  end