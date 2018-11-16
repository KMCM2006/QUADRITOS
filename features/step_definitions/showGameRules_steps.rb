Then("deberia una opcion que muestre {string}") do |string|
    expect(page).to have_content(string)
end