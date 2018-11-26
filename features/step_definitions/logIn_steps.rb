When("selecciono la opcion de Iniciar Sesion") do
  page.find("#iniciarSesion").click
end

When("seleccion el boton iniciar") do
  find(:xpath, '//*[@id="form-register"]/input[3]').click
end