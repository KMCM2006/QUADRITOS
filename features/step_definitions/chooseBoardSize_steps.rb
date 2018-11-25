When("selecciono {string} tamaho de tablero opcion {int}") do |string, int|
  find('#numberBoardSize').find(:xpath, 'option[' + int.to_s + ']').select_option
end

Then("deberia mostrar {string} seleccionado") do |string|
  expect(page).to have_select('numberBoardSize', selected: string)
end
