require 'capybara'

class NasaAsteroidsPage
  include Capybara::DSL

  ASTEROIDS_PAGE = '#asteroidspage' unless const_defined?(:ASTEROIDS_PAGE)
  ARTICLES_PAGE = '#articles' unless const_defined?(:ARTICLES_PAGE)
  ALL_ARTICLES_PAGE = '#articlespage' unless const_defined?(:ALL_ARTICLES_PAGE)
  ASTEROID_LINK = '#asteroidlink' unless const_defined?(:ASTEROID_LINK)
  NASA_ASTEROID_PAGE = 'https://ssd.jpl.nasa.gov/sbdb.cgi?sstr='

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

  def find_asteroid_link
    find(ASTEROID_LINK)
  end

  def click_asteroid_link
    find_asteroid_link.click
  end

  def nasa_asteroid_info_page
    visit(NASA_ASTEROID_PAGE)
  end

end
