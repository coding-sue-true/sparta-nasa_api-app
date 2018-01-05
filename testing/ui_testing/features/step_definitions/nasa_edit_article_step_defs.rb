Given("I am on the all articles page") do
  nasa_articles_page.articles_page
end

When("I choose an article") do
  nasa_articles_page.click_article
end

And("I press edit") do
  nasa_articles_page.click_edit_article
end

When("I change the title") do
  nasa_articles_page.insert_title("EDITED TITLE")
  nasa_articles_page.click_submit_button
end

Then("I can see a new title for that article") do
  nasa_articles_page.articles_page
end
