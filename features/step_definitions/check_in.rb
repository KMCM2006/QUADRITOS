Given("visito la pagina registrarse") do
  visit('/check_in')
end

Then("deberia ver el logo del juego en la barra de navegacion.") do
  expect(page).to have_xpath('/html/body/nav/div[1]/img')
end

Then("deberia mostrar el boton {string}") do |boton|
  expect(page).to have_xpath('//*[@id="form-register"]/input[4]')
end