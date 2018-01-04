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


end

# x = NeoLookupService.new
# puts x.get_neo_lookup_results('3542519')
