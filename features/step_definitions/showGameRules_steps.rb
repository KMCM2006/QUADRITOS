Then("deberia ver una opcion que muestre {string}") do |string|
    expect(page).to have_content(string)
end

When("oprimo la opcion ver reglas") do
    page.find("#gameRulesLink").click
end
  
Then("deberia ver un modal con las reglas en la pantalla") do
    expect(page).to have_selector('#showGameRulesModal', visible: true) 
end