When("selecciono la linea con orientacion {string} con las posiciones {string}, {string}, {string}, {string}") do |orientation, x1, x2, y1, y2|
    lineId = orientation + '-' + x1 + '_' + x2 + '_' + y1 + '_' + y2
    page.find("#"+lineId).click
  end

  Then("deberia desplegarse el mensaje {string}") do |message|
    expect(page).to have_content(message)
    #page.should have_css('html body div.container.main-game div.row div.col-sm.scores div')
  end