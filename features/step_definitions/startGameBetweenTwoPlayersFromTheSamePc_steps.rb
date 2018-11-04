Given("visito la pagina del juego") do
    visit('/game?numberOfPlayer=2')
  end

  Then("se ve el nombre del {string}") do |player|
    expect(page).to have_content(player)
  end

  Then("se ve el logo del juego") do
    expect(page).to have_xpath('/html/body/nav/div[1]')
  end

  Then("se ve el puntaje de {string} inicializado en {int}") do |player, score|
    expect(page).to have_content(player)
    expect(page).to have_content(score)
  end

  Then("se ve la opcion de {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end

  Then("se ve el tablero vacio") do
    pending # Write code here that turns the phrase above into concrete actions
  end