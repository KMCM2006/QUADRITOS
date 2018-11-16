Then("deberia ver un iframe de youtube") do
    expect(page).to have_selector('#iframeYoutubeSound', visible: true) 
end
  
Then("deberia comenzar a reproducirse automaticamente") do
    pending # Write code here that turns the phrase above into concrete actions
end
