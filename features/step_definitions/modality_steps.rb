Given("visito la pagina modalidad") do
    visit('/modality')
end
  
Then("deberia ver el logo del juego") do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Then("deberia ver el nombre del jugador") do
    expect(page).to have_content('GoDiegoGo')
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

Then("deberia ver tercera opcion {string}") do |opcion|
    expect(page).to have_content(opcion)
end