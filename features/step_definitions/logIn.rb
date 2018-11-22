When("selecciono la opcion de {string}") do |string|
  page.find("#iniciarSesion").click
end

Then("deberia mostrarme la pagina de {string}") do |string|
  expect(page.find("#" + string).text).to eq "Iniciar Sesion"
end

Then("ingrese el nombre {string} en el campo {string}") do |string, string2|
  fill_in string2, with: string
end

Then("ingreso el contraseña {string} en el campo {string}") do |string, string2|
  fill_in string2, with: string
end