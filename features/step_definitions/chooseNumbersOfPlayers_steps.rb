When("selecciono {string} jugadores opcion {int}") do |string, int|
    # find('#numberPlayers').find(:xpath, 'option[' + int.to_s + ']').select_option
end
  
Then("se ve {string} seleccionado") do |string|
    # expect(page).to have_select('numberPlayers', selected: string)
end