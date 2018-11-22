When("selecciono la opcion de Iniciar Sesion") do
  page.find("#iniciarSesion").click
end

Then("deberia mostrarme el mensaje {string} en la pagina de {string}") do |string, string2|
  expect(page.find("#" + string2).text).to eq string
end

Then("ingrese el nombre {string} en el campo {string}") do |string, string2|
  fill_in string2, with: string
end

Then("ingreso la contraseña {string} en el campo {string}") do |string, string2|
  fill_in string2, with: string
end