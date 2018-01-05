require_relative '../lib/pages/index_page'
require_relative '../lib/pages/asteroids_page'
require_relative '../lib/pages/articles_page'

module NasaWebApp

  def nasa_indexpage
    NasaIndexPage.new
  end

  def nasa_asteroids_page
    NasaAsteroidsPage.new
  end

  def nasa_articles_page
    NasaArticlesPage.new
  end

end
