require 'spec_helper'

ENV['RACK_ENV'] = 'test'

describe 'Nasa API Unit Testing' do

  include Rack::Test::Methods

  def app
    NeosApiController.new
  end

  context "should open index page" do

    it "receive a status code of 200" do
      get "/"
      expect(last_response.status).to eq 200
    end

    it "receive information as a string" do
      get "/"
      expect(last_response.body).to be_kind_of(String)
    end
  end

  context "index page should display Image of the Day" do

    it "should display title of image of the day" do
      get "/"
      expect(last_response.body).to include("<h2>")
    end

    it "should display the image of the day" do
      get "/"
      expect(last_response.body).to include("alt='image'")
    end

    it "should display an explanation of the image" do
      get "/"
      expect(last_response.body).to include("<p id='explanation'>")
    end
  end

  context "should go to the asteroids page " do

    it "receive a status code of 200" do
      get "/asteroids"
      expect(last_response.status).to eq 200
    end

    it "receive information as a string" do
      get "/asteroids"
      expect(last_response.body).to be_kind_of(String)
    end

  end

  context "should display information about the asteroids" do

    it "should display name of the asteroid" do
      get '/asteroids'
      expect(last_response.body).to include("Name")
    end

    it "should display id of the asteroid" do
      get '/asteroids'
      expect(last_response.body).to include("ID")
    end

    it "should display diameter of the asteroid" do
      get '/asteroids'
      expect(last_response.body).to include("Diameter")
    end

    it "should display asteroid's speed" do
      get '/asteroids'
      expect(last_response.body).to include("Speed")
    end

    it "should display missed body's surface and distance" do
      get '/asteroids'
      expect(last_response.body).to include("'s surface by")
      expect(last_response.body).to include("miles")
    end
  end

end
