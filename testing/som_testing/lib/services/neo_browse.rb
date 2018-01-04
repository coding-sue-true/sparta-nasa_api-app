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



end

# x = NeoBrowseService.new
