require 'capybara'

class NasaIndexPage
  include Capybara::DSL

  HOMEPAGE_URL = 'localhost:9292' unless const_defined?(:HOMEPAGE_URL)
  ASTEROIDS_PAGE = '#asteroidspage' unless const_defined?(:ASTEROIDS_PAGE)

  def index_page
    visit(HOMEPAGE_URL)
  end

  def asteroids_page
    click_link(ASTEROIDS_PAGE)
  end

end
