require 'spec_helper'

ENV['RACK_ENV'] = 'test'

describe 'Articles Resource Unit Testing' do

  include Rack::Test::Methods

  def app
    ArticlesController.new
  end

  context "should go to the articles page" do

    it "receive a status code of 200" do
      get "/articles"
      expect(last_response.status).to eq 200
    end

    it "receive information as a string" do
      get "/articles"
      expect(last_response.body).to be_kind_of(String)
    end

    it "should display the image of the article" do
      get "/articles"
      expect(last_response.body).to include("alt='article_image'")
    end

    it "should display the title of the article" do
      get "/articles"
      expect(last_response.body).to include("<h4 class='card-title'>")
    end

    it "should display the body of the article" do
      get "/articles"
      expect(last_response.body).to include("<p class='card-text'>")
    end
  end

  context "should go to the new article page" do

    it "receive a status code of 200" do
      get "/articles/new"
      expect(last_response.status).to eq 200
    end

    it "should have a title field" do
      get "/articles/new"
      expect(last_response.body).to include("Title")
    end

    it "should have a body field" do
      get "/articles/new"
      expect(last_response.body).to include("Body")
    end

    it "should have an image field" do
      get "/articles/new"
      expect(last_response.body).to include("Image")
    end

    it "should have an option to save the article" do
      get "/articles/new"
      expect(last_response.body).to include("value='Save Article'")
    end
  end

  context "should go to the show article page" do

    it "receive a status code of 200" do
      get "/articles/20"
      expect(last_response.status).to eq 200
    end

    it "should show the title of the article" do
      get "/articles/20"
      expect(last_response.body).to include("<h1>")
    end

    it "should show the image of the article" do
      get "/articles/20"
      expect(last_response.body).to include("alt='image'")
    end

    it "should show the body of the article" do
      get "/articles/20"
      expect(last_response.body).to include("<p>")
    end

    it "should show the edit button" do
      get "/articles/20"
      expect(last_response.body).to include("id='editarticle'")
    end

    it "should show the delete button" do
      get "/articles/20"
      expect(last_response.body).to include("id='deletebtn'")
    end
  end

  context "should go to the edit article page" do

    it "receive a status code of 200" do
      get "/articles/20/edit"
      expect(last_response.status).to eq 200
    end

    it "should have a title field" do
      get "/articles/20/edit"
      expect(last_response.body).to include("Title")
    end

    it "should have a body field" do
      get "/articles/20/edit"
      expect(last_response.body).to include("Body")
    end

    it "should have an image field" do
      get "/articles/20/edit"
      expect(last_response.body).to include("Image")
    end

    it "should have an option to save the article" do
      get "/articles/20/edit"
      expect(last_response.body).to include("value='Save Article'")
    end
  end
end
