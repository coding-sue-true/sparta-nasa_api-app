Given("I am on the articles page") do
  nasa_articles_page.articles_page
end

And("I click on an article") do
  nasa_articles_page.click_article
end

When("I click delete") do
  nasa_articles_page.click_delete_button
end

Then("I can no longer see that article in my articles page") do
  nasa_articles_page.articles_page
end
