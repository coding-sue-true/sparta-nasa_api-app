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

# x = Neoapi.new
# x.neo_feed_service.get_neo_feed_results('2017-12-22', '2017-12-25')
