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
    get_neo_feed_neo['2017-12-22']
  end

  def get_date_links
    get_date[0]['links']
  end

  def get_date_self
    get_date_links['self']
  end

  def get_neo_reference_id
    get_date[0]['neo_reference_id']
  end

  def get_neo_name
    get_date[0]['name']
  end

  def get_neo_nasa_jpl_url
    get_date[0]['nasa_jpl_url']
  end

  def get_neo_absolute_magnitude_h
    get_date[0]['absolute_magnitude_h']
  end

  def get_neo_estimated_diameter
    get_date[0]['estimated_diameter']
  end

  def get_km
    get_neo_estimated_diameter['kilometers']
  end

  def get_km_estimated_diameter_min
    get_km['estimated_diameter_min']
  end

  def get_km_estimated_diameter_max
    get_km['estimated_diameter_max']
  end

  def get_meters
    get_neo_estimated_diameter['meters']
  end

  def get_meters_estimated_diameter_min
    get_meters['estimated_diameter_min']
  end

  def get_meters_estimated_diameter_max
    get_meters['estimated_diameter_max']
  end

  
end

# x = NeoFeedService.new
# puts x.get_neo_feed_results('2017-12-22', '2017-12-25')
