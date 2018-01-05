require 'capybara'

class NasaArticlesPage
  include Capybara::DSL

  INDEX_PAGE = '#indexpage' unless const_defined?(:INDEX_PAGE)
  SHOW_ARTICLE_URL = 'localhost:9292/articles/1'
  EDIT_ARTICLE_URL = 'localhost:9292/articles/1/edit'
  ARTICLES_URL = 'localhost:9292/articles'
  ARTICLES_PAGE = '#articles' unless const_defined?(:ARTICLES_PAGE)
  ALL_ARTICLES_PAGE = '#articlespage' unless const_defined?(:ALL_ARTICLES_PAGE)
  TITLE_FIELD_ID = 'articletitle'
  BODY_FIELD_ID = 'articlebody'
  IMAGE_FIELD_ID = 'articleimage'
  SUBMIT_BTN = 'submitbtn'
  ARTICLE_SHOW_ID = '#articleshow'
  DELETE_BTN = 'deletebtn'

  def find_index_page
    find(INDEX_PAGE)
  end

  def click_index_page
    find_index_page.click
  end

  def insert_title(title)
    fill_in(TITLE_FIELD_ID, with: title)
  end

  def insert_body(body)
    fill_in(BODY_FIELD_ID, with: body)
  end

  def insert_image(image)
    fill_in(IMAGE_FIELD_ID, with: image)
  end

  def click_submit_button
    find_button(SUBMIT_BTN).click
  end

  def articles_page
    visit(ARTICLES_URL)
  end

  def find_article
    find(ARTICLE_SHOW_ID)
  end

  def click_article
    find_article.click
  end

  def click_delete_button
    find_button(DELETE_BTN).click
  end

end
