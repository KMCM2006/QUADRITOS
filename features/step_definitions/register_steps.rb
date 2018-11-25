When("selecciono la opcion de Registrarse") do
  page.find("#register").click
end

When("deberia mostrarme el mensaje {string} en la pagina de {string}") do |string, string2|
  expect(page.find("#" + string2).text).to eq string
end

When("ingrese el nombre {string} en el campo {string}") do |string, string2|
  fill_in string2, with: string
end

When("ingreso la contraseña {string} en el campo {string}") do |string, string2|
  fill_in string2, with: string
end

When("ingreso la confrimarcion de contraseña {string} en el campo {string}") do |string, string2|
  fill_in string2, with: string
end

When("selecciono el boton continuar") do
  find(:xpath, '//*[@id="form-register"]/input[4]').click
end

Then("me muestra el mensaje de modalidades") do
  expect(page.find(".display-3").text).to eq "Modalidades"
end