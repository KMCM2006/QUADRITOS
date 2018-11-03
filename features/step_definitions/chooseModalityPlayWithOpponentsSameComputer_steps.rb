Given("estoy en la pagina modalidad") do
    visit('/modality')
end
  
Then("se ve la opcion para elegir la cantidad de jugadores") do
    expect(page).to have_selector('#numberPlayerSelector', visible: true)    
end

Then("deberia ver el  boton {string}") do |nombre|
    expect(page).to have_content(nombre)
end