Then("deberia desplegarse el mensaje {string}") do |message|
    expect(page).to have_content(message)
end