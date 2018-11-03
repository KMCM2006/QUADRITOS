Given("visito la pagina registrarse") do
    visit('/check_in')
  end
  
  Then("deberia ver el nombre del jugador {string}.") do |nombre|
    expect(page).to have_content(nombre)
  end
  
  Then("deberia ver el logo del juego.") do
    expect(page).to have_xpath('/html/body/nav/div[1]/img')
end

Then("deberia mostrar un mensaje {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("deberia mostrar el boton {string}") do |boton|
    find_button(start).click
  end