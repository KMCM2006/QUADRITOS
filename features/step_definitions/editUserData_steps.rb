Given("visito la pagina editar datos") do
    visit('/edit')
end
  
Then("deberia ver el titulo {string}") do |string|
    expect(page).to have_content(string)
end
  
Then("deberia ver un campo para ingresar mi nuevo nombre") do
    expect(page).to have_selector('#usuario', visible: false) 
end
  
Then("deberia ver un campo para ingresar mi nueva contrasena") do
    expect(page).to have_selector('#contrasenia', visible: false) 
end
  
Then("deberia ver un campo para confirmar mi contrasena") do
    expect(page).to have_selector('#contraseniaConfirmar', visible: false) 
end
  
Given("estoy en la pagina editar datos") do
    visit('/edit')
end
  
Then("deberia ver mi nombre en el campo {string}") do |string|
    expect(find_field('user').value).to eq string
end
  
When("ingreso mi nuevo nombre {string}") do |string|
    fill_in 'user', with: string
end

When("ingreso mi contrasena {string}") do |string|
    fill_in 'password', with: string
end
  
Then("deberia ver mi nuevo nombre {string} en el campo nombre") do |string|
    expect(find_field('user').value).to eq string
end
  
Then("deberia ver mi nueva contrasena {string} en el campo contrasena") do |string|
    expect(find_field('password').value).to eq string
end
  
When("confirmo mi contrasena {string}") do |string|
    fill_in 'confirmPassword', with: string
end
  
When("confirmo los cambios") do
    pending # Write code here that turns the phrase above into concrete actions
end

Then("deberia ver mi nueva contrasena {string} en el campo confirmar contrasena") do |string|
    expect(find_field('confirmPassword').value).to eq string
end
  
Then("deberia enviarme a la pagina de elegir modalidad") do
    pending # Write code here that turns the phrase above into concrete actions
end