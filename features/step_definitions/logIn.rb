Given("visito la pagina inicia sesion") do
    visit('/logIn')
  end
  Then("deberia mostrar el logo del juego en la barra de navegacion") do
    expect(page).to have_xpath('/html/body/nav/div[1]/img')
  end