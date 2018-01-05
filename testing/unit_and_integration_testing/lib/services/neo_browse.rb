require 'httparty'
require 'json'


class NeoBrowseService
  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1'

  def api_key
    @api_key = 'FXW5DqId77kw3C1aWGQAAje4g2uIwMWs9SPjm8rR'
  end

  def get_neo_browse_results
    @neo_browse_data = JSON.parse(self.class.get("/neo/browse?page=1&size=20&api_key=#{api_key}").body)
  end

  def get_neo_browse_all
    @neo_browse_data
  end

  def get_neo_browse_links
    @neo_browse_data['links']
  end

  def get_next
    get_neo_browse_links['next']
  end

  def get_prev
    get_neo_browse_links['prev']
  end

  def get_self
    get_neo_browse_links['self']
  end

  def get_neo_browse_page
    @neo_browse_data['page']
  end

  def get_size
    get_neo_browse_page['size']
  end

  def get_total_elements
    get_neo_browse_page['total_elements']
  end

  def get_total_pages
    get_neo_browse_page['total_pages']
  end

  def get_number
    get_neo_browse_page['number']
  end

  def get_near_earth_objects
    @neo_browse_data['near_earth_objects']
  end

  def get_links
    get_near_earth_objects[0]['links']
  end

  def get_links_self
    get_links['self']
  end

  def get_neo_reference_id
    get_near_earth_objects[0]['neo_reference_id']
  end

  def get_neo_name
    get_near_earth_objects[0]['name']
  end

  def get_neo_nasa_jpl_url
    get_near_earth_objects[0]['nasa_jpl_url']
  end

  def get_neo_absolute_magnitude_h
    get_near_earth_objects[0]['absolute_magnitude_h']
  end

  def get_neo_estimated_diameter
    get_near_earth_objects[0]['estimated_diameter']
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

  def get_miles
    get_neo_estimated_diameter['miles']
  end

  def get_miles_estimated_diameter_min
    get_miles['estimated_diameter_min']
  end

  def get_miles_estimated_diameter_max
    get_miles['estimated_diameter_max']
  end

  def get_feet
    get_neo_estimated_diameter['feet']
  end

  def get_feet_estimated_diameter_min
    get_feet['estimated_diameter_min']
  end

  def get_feet_estimated_diameter_max
    get_feet['estimated_diameter_max']
  end

  def get_potentially_hazardous
    get_near_earth_objects[0]['is_potentially_hazardous_asteroid']
  end

  def get_close_approach_data
    get_near_earth_objects[0]['close_approach_data']
  end

  def get_orbital_data
    get_near_earth_objects[0]['orbital_data']
  end

  def get_orbit_id
    get_orbital_data['orbit_id']
  end

  def get_orbit_determin_date
    get_orbital_data['orbit_determination_date']
  end

  def get_orbit_uncertainty
    get_orbital_data['orbit_uncertainty']
  end

  def get_orbit_min_intersec
    get_orbital_data['minimum_orbit_intersection']
  end

  def get_jupiter_tisserand_inv
    get_orbital_data['jupiter_tisserand_invariant']
  end

  def get_epoch
    get_orbital_data['epoch_osculation']
  end

  def get_eccentricity
    get_orbital_data['eccentricity']
  end

  def get_semi_major_axis
    get_orbital_data['semi_major_axis']
  end

  def get_inclination
    get_orbital_data['inclination']
  end

  def get_ascending_node_long
    get_orbital_data['ascending_node_longitude']
  end

  def get_orbital_period
    get_orbital_data['orbital_period']
  end

  def get_perihelion_distance
    get_orbital_data['perihelion_distance']
  end

  def get_perihelion_argument
    get_orbital_data['perihelion_argument']
  end

  def get_aphelion_distance
    get_orbital_data['aphelion_distance']
  end

  def get_perihelion_time
    get_orbital_data['perihelion_time']
  end

  def get_mean_anomaly
    get_orbital_data['mean_anomaly']
  end

  def get_mean_motion
    get_orbital_data['mean_motion']
  end

  def get_equinox
    get_orbital_data['equinox']
  end
end
