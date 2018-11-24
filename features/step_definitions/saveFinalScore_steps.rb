When("se marcan todas las casillas en el tablero") do
    @interval = 50
    for i in (1..7) do
        for j in (1..6) do
            positions = 'H' + '-' + (j*@interval).to_s + '_' + ((j+1)*@interval).to_s + '_' + (@interval*i).to_s + '_' + (@interval*i).to_s
            page.find("#"+positions).click
            positions = 'V' + '-' + (@interval*i).to_s + '_' + (@interval*i).to_s + '_' + (j*@interval).to_s + '_' + ((j+1)*@interval).to_s
            page.find("#"+positions).click
            #@board.udpateLine('H',[(j*@interval), ((j+1)*@interval), @interval*i, @interval*i])
            #@board.udpateLine('V',[@interval*i, @interval*i,(j*@interval), ((j+1)*@interval)])
        end
    end
  end

  Then("deberia verse el mensaje {string}") do |message|
    expect(page).to have_content(message)
  end