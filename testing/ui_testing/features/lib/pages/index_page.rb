require 'capybara'

class NasaIndexPage
  include Capybara::DSL

  HOMEPAGE_URL = 'localhost:9292' unless const_defined?(:HOMEPAGE_URL)
  ASTEROIDS_PAGE = '#asteroidspage' unless const_defined?(:ASTEROIDS_PAGE)

  def index_page
    visit(HOMEPAGE_URL)
  end

  def find_asteroids_page
    find(ASTEROIDS_PAGE)
  end

  def click_asteroids_page
    find_asteroids_page.click
  end

end
