When("ingreso el nombre de los {int} jugadores") do |int|
    # find(:xpath, "//input[@id='my_hidden_field_id']").set "my value"
end

Then("deberia ver el  boton {string}") do |nombre|
    expect(page).to have_content(nombre)
end