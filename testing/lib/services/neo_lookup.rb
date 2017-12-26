require 'httparty'
require 'json'


class NeoLookupService
  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1'

  def api_key
    @api_key = 'FXW5DqId77kw3C1aWGQAAje4g2uIwMWs9SPjm8rR'
  end

  def get_neo_lookup_results(id)
    @neo_feed_data = JSON.parse(self.class.get("/neo/#{id}?api_key=#{api_key}").body)
  end

end

x = NeoLookupService.new
puts x.get_neo_lookup_results('3542519')
