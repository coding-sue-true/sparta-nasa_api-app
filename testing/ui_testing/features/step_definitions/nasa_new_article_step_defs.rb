Given("I am on the index page") do
  nasa_indexpage.index_page
end

And("I move to new article page") do
  nasa_asteroids_page.click_articles_page
  nasa_asteroids_page.click_new_article
end

When("I fill the title, body and image") do
  nasa_articles_page.insert_title("TEST")
  nasa_articles_page.insert_body("BODY TEST")
  nasa_articles_page.insert_image("https://cdn.spacetelescope.org/archives/images/wallpaper2/heic1509a.jpg")
end

And("I Press Submit") do
  nasa_articles_page.click_submit_button
end

Then("I can see my new article displayed") do
  nasa_articles_page.articles_page
end
