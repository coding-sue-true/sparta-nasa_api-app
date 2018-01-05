require 'httparty'
require 'json'


class NeoLookupService
  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1'

  def api_key
    @api_key = 'FXW5DqId77kw3C1aWGQAAje4g2uIwMWs9SPjm8rR'
  end

  def get_neo_lookup_results(id)
    @neo_lookup_data = JSON.parse(self.class.get("/neo/#{id}?api_key=#{api_key}").body)
  end

  def get_neo_lookup_all
    @neo_lookup_data
  end

  def get_neo_lookup_links
    @neo_lookup_data['links']
  end

  def get_self
    get_neo_lookup_links['self']
  end

  def get_neo_reference_id
    get_neo_lookup_all['neo_reference_id']
  end

  def get_name
    get_neo_lookup_all['name']
  end

  def get_nasa_jpl_url
    get_neo_lookup_all['nasa_jpl_url']
  end

  def get_absolute_magnitude_h
    get_neo_lookup_all['absolute_magnitude_h']
  end

  def get_estimated_diameter_all
    get_neo_lookup_all['estimated_diameter']
  end

  def get_km
    get_estimated_diameter_all['kilometers']
  end

  def get_km_estimated_diameter_min
    get_km['estimated_diameter_min']
  end

  def get_km_estimated_diameter_max
    get_km['estimated_diameter_max']
  end

  def get_meters
    get_estimated_diameter_all['meters']
  end

  def get_meters_estimated_diameter_min
    get_meters['estimated_diameter_min']
  end

  def get_meters_estimated_diameter_max
    get_meters['estimated_diameter_max']
  end

  def get_miles
    get_estimated_diameter_all['miles']
  end

  def get_miles_estimated_diameter_min
    get_miles['estimated_diameter_min']
  end

  def get_miles_estimated_diameter_max
    get_miles['estimated_diameter_max']
  end

  def get_feet
    get_estimated_diameter_all['feet']
  end

  def get_feet_estimated_diameter_min
    get_feet['estimated_diameter_min']
  end

  def get_feet_estimated_diameter_max
    get_feet['estimated_diameter_max']
  end

  def get_potentially_hazardous
    get_neo_lookup_all['is_potentially_hazardous_asteroid']
  end

  def get_close_approach_info
    get_neo_lookup_all['close_approach_data']
  end

  def get_close_approach_date
    get_close_approach_info[0]['close_approach_date']
  end

  def get_epoch_date
    get_close_approach_info[0]['epoch_date_close_approach']
  end

  def get_relative_velocity
    get_close_approach_info[0]['relative_velocity']
  end

  def get_km_s
    get_relative_velocity['kilometers_per_second']
  end

  def get_km_h
    get_relative_velocity['kilometers_per_hour']
  end

  def get_mph
    get_relative_velocity['miles_per_hour']
  end

  def get_miss_distance
    get_close_approach_info[0]['miss_distance']
  end

  def get_astronomical
    get_miss_distance['astronomical']
  end

  def get_lunar
    get_miss_distance['lunar']
  end

  def get_kilometers
    get_miss_distance['kilometers']
  end

  def get_distance_miles
    get_miss_distance['miles']
  end

  def get_orbiting_body
    get_close_approach_info[0]['orbiting_body']
  end


end

# x = NeoLookupService.new
# puts x.get_neo_lookup_results('3542519')
