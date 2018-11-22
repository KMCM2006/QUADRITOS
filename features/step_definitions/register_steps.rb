When("selecciono la opcion de Registrarse") do
  page.find("#register").click
end

Then("ingreso la confrimarcion de contraseña {string} en el campo {string}") do |string, string2|
  fill_in string2, with: string
end