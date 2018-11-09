Then("se ve la opcion para elegir dificultad de la PC") do
    expect(page).to have_selector('#difficultySelector', visible: false) 
end