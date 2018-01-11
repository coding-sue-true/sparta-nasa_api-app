require 'httparty'
require 'json'

class NeosApiController < Sinatra::Base

  # Sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '../..')

  # Sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Enables the reloader so we dont need to keep restarting the server
  # configure :development do
  #   register Sinatra::Reloader
  # end

  # A get request to the / route will respond with our index with NASA's picture of the day (consumed from their API)
  get '/' do
    @title = 'NASA'
    @api_key = 'FXW5DqId77kw3C1aWGQAAje4g2uIwMWs9SPjm8rR'
    @image_today = HTTParty.get("https://api.nasa.gov/planetary/apod?api_key=#{@api_key}")

    erb :'neos/index'
  end

  # A get request to the /asteroids route will respond with a list of all NEO from today's date (consumed from their API)
  get '/asteroids' do
    @title = 'NASA'
    @api_key = 'FXW5DqId77kw3C1aWGQAAje4g2uIwMWs9SPjm8rR'
    @date_today = Time.now.strftime("%Y-%m-%d")
    feed_api_info = HTTParty.get("https://api.nasa.gov/neo/rest/v1/feed?start_date=#{@date_today}&end_date=#{@date_today}&api_key=#{@api_key}")
    @asteroids = feed_api_info.parsed_response

    erb :"neos/asteroids"

  end
end
