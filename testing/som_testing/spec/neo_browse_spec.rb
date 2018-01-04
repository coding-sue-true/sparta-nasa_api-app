require 'spec_helper'

describe Neoapi do

  context 'requesting information on Neo Browse API works correctly' do

    before(:all) do
      @neoapi = Neoapi.new.neo_browse_service
      @neoapi.get_neo_browse_results
    end

    it "Should respond with an Hash of Results" do
      expect(@neoapi.get_neo_browse_all).to be_kind_of(Hash)
    end

    it "Links should respond with an Hash of Results" do
      expect(@neoapi.get_neo_browse_links).to be_kind_of(Hash)
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


  end
end
