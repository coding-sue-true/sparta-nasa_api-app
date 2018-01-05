require 'capybara'

class NasaAsteroidsPage
  include Capybara::DSL

  ASTEROIDS_PAGE = '#asteroidspage' unless const_defined?(:ASTEROIDS_PAGE)
  ARTICLES_PAGE = '#articles' unless const_defined?(:ARTICLES_PAGE)
  ALL_ARTICLES_PAGE = '#articlespage' unless const_defined?(:ALL_ARTICLES_PAGE)

  def find_asteroids_page
    find(ASTEROIDS_PAGE)
  end

  def click_asteroids_page
    find_asteroids_page.click
  end

  def find_articles_page
    find(ARTICLES_PAGE)
  end

  def click_articles_page
    find_articles_page.click
  end

  def find_all_articles_page
    find(ALL_ARTICLES_PAGE)
  end

  def click_all_articles_page
    find_all_articles_page.click
  end

end
