Given("visito la pagina modalidad") do
    visit('/modality')
end
  
Then("deberia ver logo del juego") do
    expect(page).to have_xpath('/html/body/nav/div[1]/img')
end
  
Then("deberia ver el nombre del jugador {string}") do |nombre|
    expect(page).to have_content(nombre)
end

Then("deberia ver un mensaje {string}") do |mensaje| 
    expect(page).to have_content(mensaje)
end
  
Then("deberia ver primera opcion {string}") do |opcion|
    expect(page).to have_content(opcion)
end

Then("deberia ver segunda opcion {string}") do |opcion|
    expect(page).to have_content(opcion)
end
