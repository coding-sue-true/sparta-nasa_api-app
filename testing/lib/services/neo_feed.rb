require 'httparty'
require 'json'


class NeoFeedService
  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1'

  def api_key
    @api_key = 'FXW5DqId77kw3C1aWGQAAje4g2uIwMWs9SPjm8rR'
  end

  def get_neo_feed_results(start_date, end_date)
    @neo_feed_data = JSON.parse(self.class.get("/feed?start_date=#{start_date}&end_date=#{end_date}&api_key=#{api_key}").body)
  end

end

# x = NeoFeedService.new
# puts x.get_neo_feed_results('2017-12-22', '2017-12-25')
