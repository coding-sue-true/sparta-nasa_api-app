require 'capybara'

class NasaArticlesPage
  include Capybara::DSL

  INDEX_PAGE = '#indexpage' unless const_defined?(:INDEX_PAGE)

  def find_index_page
    find(INDEX_PAGE)
  end

  def click_index_page
    find_index_page.click
  end

end
