When("selecciono la linea con orientacion {string} con las posiciones {string}, {string}, {string}, {string}") do |orientation, x1, x2, y1, y2|
    lineId = orientation + '-' + x1 + '_' + x2 + '_' + y1 + '_' + y2
    page.find("#"+lineId).click
end

Then("la linea con orientacion {string} con las posiciones {string}, {string}, {string}, {string} deberia hacerse visible") do |orientation, x1, x2, y1, y2|
    lineId = orientation + '-' + x1 + '_' + x2 + '_' + y1 + '_' + y2
    expect(page.find("#" + lineId)[:style]).to have_content("stroke:rgb(107,213,225);stroke-width:9")
end
