require 'spec_helper'

describe Neoapi do

  context 'requesting information on Neo Feed API works correctly' do

    before(:all) do
      @neoapi = Neoapi.new.neo_feed_service
      @neoapi.get_neo_feed_results('2017-12-22', '2017-12-25')
    end

    it "Should respond with an Hash of Results" do
      expect(@neoapi.get_neo_feed_all).to be_kind_of(Hash)
    end

    it "Links should respond with an Hash of Results" do
      expect(@neoapi.get_neo_feed_links).to be_kind_of(Hash)
    end

    it "Next should respond as a String" do
      expect(@neoapi.get_next).to be_kind_of(String)
    end

    it "Prev should respond as a String" do
      expect(@neoapi.get_prev).to be_kind_of(String)
    end

    it "Self should respond as a String" do
      expect(@neoapi.get_self).to be_kind_of(String)
    end

    it "Element Count should respond with an Integer" do
      expect(@neoapi.get_neo_feed_elementcount).to be_kind_of(Integer)
    end

    it "Near Earth Objects should respond as a Hash" do
      expect(@neoapi.get_neo_feed_neo).to be_kind_of(Hash)
    end

    it "Near Earth Objects date should respond as a String" do
      expect(@neoapi.get_date).to be_kind_of(Hash)
    end

  end
end
