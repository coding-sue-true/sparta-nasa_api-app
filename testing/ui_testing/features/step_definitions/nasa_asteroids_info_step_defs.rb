Given("I am on the Nasa index page") do
  nasa_indexpage.index_page
end

And("I move to list of all Asteroids page") do
  nasa_indexpage.click_asteroids_page
end

When("I click on an asteroid") do
  nasa_asteroids_page.click_asteroid_link
end

Then("I can see a new page from NASA with more detailed info about it") do
  nasa_asteroids_page.nasa_asteroid_info_page
  sleep 10
end
