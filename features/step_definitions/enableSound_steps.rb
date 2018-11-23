Then("deberia ver un iframe de youtube") do
    expect(page).to have_selector('#iframeYoutubeSound', visible: true) 
end
  
Then("deberia comenzar a reproducirse automaticamente") do
    expect(page).to have_css("iframe[src='https://www.youtube.com/embed/l9PxOanFjxQ?autoplay=1&start=40']")
end
