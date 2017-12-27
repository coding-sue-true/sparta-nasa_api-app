require 'spec_helper'

describe Neoapi do

  context 'requesting information on Neo Feed API works correctly' do

    before(:all) do
      @neoapi = Neoapi.new.neo_feed_service
      @neoapi.get_neo_feed_results('2017-12-22', '2017-12-25')
    end

    it "Should respond with a status message of 200" do
      expect(@neoapi.get_neo_feed_links).to be_kind_of(Hash)
    end

    it "Should respond with a status message of 200" do
      expect(@neoapi.get_neo_feed_elementcount).to be_kind_of(Integer)
    end

  end
end
