Then("me pide que ingrese los nombres de los {int} jugadores {string}") do |int, string|
    expect(page).to have_selector('#fatherOfTags', visible: false) 
end