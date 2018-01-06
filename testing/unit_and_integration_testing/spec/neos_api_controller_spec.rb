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

    it "recieve information as a string" do
      get "/"
      expect(last_response.body).to be_kind_of(String)
    end
  end

  context "should go to the asteroids page " do

    it "receive a status code of 200" do
      get "/asteroids"
      expect(last_response.status).to eq 200
    end

    it "recieve information as a string" do
      get "/asteroids"
      expect(last_response.body).to be_kind_of(String)
    end

  end

end
