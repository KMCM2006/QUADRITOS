Given("visito la pagina principal") do
    visit('/')
end

Then("deberia ver el mensaje {string}") do |mensaje|
    expect(page).to have_content(mensaje)
end