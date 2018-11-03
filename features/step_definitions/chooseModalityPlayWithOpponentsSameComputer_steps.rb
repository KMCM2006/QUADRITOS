Given("estoy en la pagina modalidad") do
    visit('/modality')
end

When("selecciono la opcion jugar contra Oponentes desde la misma PC") do
    page.find("//*[@id='modalitySelector']").click
    page.find("//*[@id='modalityPlayInSameComputer']").click    
end
  
Then("se hace visible la opcion para elegir la cantidad de jugadores") do
    expect(page).to have_selector('#numberPlayerSelector', visible: true)    
end