require 'capybara'

class NasaIndexPage
  include Capybara::DSL

  def index_page
    visit('/')
  end

  def sign_in_link
    click_link('Sign in')
  end

  def click_sign_in_link
    sign_in_link.click
  end

end
