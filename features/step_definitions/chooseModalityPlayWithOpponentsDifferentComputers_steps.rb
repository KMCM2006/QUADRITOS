When("selecciono la opcion jugar contra Oponentes desde distinta PC") do
    page.find("//*[@id='modalitySelector']").click
    page.find("//*[@id='modalityPlayInDifferentComputer']").click  
end