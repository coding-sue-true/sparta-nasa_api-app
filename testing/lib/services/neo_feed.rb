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

  def get_neo_feed_all
    @neo_feed_data
  end

  def get_neo_feed_links
    @neo_feed_data['links']
  end

  def get_next
    get_neo_feed_links['next']
  end

  def get_prev
    get_neo_feed_links['prev']
  end

  def get_self
    get_neo_feed_links['self']
  end

  def get_neo_feed_elementcount
    @neo_feed_data['element_count']
  end

  def get_neo_feed_neo
    @neo_feed_data['near_earth_objects']
  end

  def get_date
    get_neo_feed_neo.first
  end
end

# x = NeoFeedService.new
# puts x.get_neo_feed_results('2017-12-22', '2017-12-25')
