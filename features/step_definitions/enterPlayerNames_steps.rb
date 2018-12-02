When("ingreso los dos nombres {string} {string}") do |string, string2|
    fill_in 'name11', with: string
    fill_in 'name12', with: string2
end
  
When("ingreso los tres nombres {string} {string} {string}") do |string, string2, string3|
    fill_in 'name11', with: string
    fill_in 'name12', with: string2
    fill_in 'name13', with: string3
end
  
When("ingreso los cuatro nombres {string} {string} {string} {string}") do |string, string2, string3, string4|
    fill_in 'name11', with: string
    fill_in 'name12', with: string2
    fill_in 'name13', with: string3
    fill_in 'name14', with: string4
end

Then("deberia ver los dos nombres {string} {string}") do |string, string2|
    expect(find_field('name11').value).to eq string
    expect(find_field('name12').value).to eq string2
end
  
Then("deberia ver los tres nombres {string} {string} {string}") do |string, string2, string3|
    expect(find_field('name11').value).to eq string
    expect(find_field('name12').value).to eq string2
    expect(find_field('name13').value).to eq string3
end
  
Then("deberia ver los cuatro nombres {string} {string} {string} {string}") do |string, string2, string3, string4|
    expect(find_field('name11').value).to eq string
    expect(find_field('name12').value).to eq string2
    expect(find_field('name13').value).to eq string3
    expect(find_field('name14').value).to eq string4
end