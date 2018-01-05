require_relative 'services/neo_feed.rb'
require_relative 'services/neo_lookup.rb'
require_relative 'services/neo_browse.rb'

class Neoapi

  def neo_feed_service
    NeoFeedService.new
  end

  def neo_lookup_service
    NeoLookupService.new
  end

  def neo_browse_service
    NeoBrowseService.new
  end

end
