Given("visito la pagina principal") do
    visit('/')
end

Then("deberia ver el mensaje {string}") do |mensaje|
    expect(page).to have_content(mensaje)
end

Then("deberia ver el logo del juego en la ventana principal") do
    expect(page).to have_xpath('/html/body/center/img')
end
  
Then("deberia ver el boton {string}") do |start|
    find_button(start).click
end