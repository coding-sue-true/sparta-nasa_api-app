require 'spec_helper'

ENV['RACK_ENV'] = 'test'

describe 'Articles Resource Unit Testing' do

  include Rack::Test::Methods

  def app
    ArticlesController.new
  end

  context "should go to the asteroids page " do

    it "receive a status code of 200" do
      get "/articles"
      expect(last_response.status).to eq 200
    end

    it "recieve information as a string" do
      get "/articles"
      expect(last_response.body).to be_kind_of(String)
    end
  end
end
