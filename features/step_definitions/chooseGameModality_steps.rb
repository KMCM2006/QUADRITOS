Given("estoy en la pagina modalidad") do
    visit('/modality')
end

#Then("se ve la opcion para elegir tamaho del tablero") do
 #   expect(page).to have_selector('#numberBoard', visible: false) 
 # end

Then("se ve la opcion para elegir la cantidad de jugadores") do
    expect(page).to have_selector('#numberPlayerSelector', visible: true)    
end

When("selecciono modalidad {string} Opcion {int}") do |string, int|
    find('#modalitySelector').find(:xpath, 'option[' + int.to_s + ']').select_option
end
  
Then("se ve la opcion {string} seleccionada") do |string|
    expect(page).to have_select('modalitySelector', selected: string)
end