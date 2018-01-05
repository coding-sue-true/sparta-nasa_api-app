Given("I am on the Nasa home page") do
  nasa_indexpage.index_page
end

And("I move to the Asteroids page") do
  nasa_indexpage.click_asteroids_page
end

When("I move to the Articles page") do
  nasa_asteroids_page.click_articles_page
  nasa_asteroids_page.click_all_articles_page
end

Then("I can move back to NASA home page") do
  nasa_articles_page.click_index_page
  sleep 10
end
