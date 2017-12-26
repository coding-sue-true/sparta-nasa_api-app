require 'httparty'
require 'json'


class NeoBrowseService
  include HTTParty

  base_uri 'https://api.nasa.gov/neo/rest/v1'

  def api_key
    @api_key = 'FXW5DqId77kw3C1aWGQAAje4g2uIwMWs9SPjm8rR'
  end

  def get_neo_browse_results
    @neo_browse_data = JSON.parse(self.class.get("/neo/browse?api_key=#{api_key}").body)
  end



end

# x = NeoBrowseService.new
