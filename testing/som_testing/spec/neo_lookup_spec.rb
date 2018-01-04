require 'spec_helper'

describe Neoapi do

  context 'requesting information on Neo Lookup API works correctly' do

    before(:all) do
      @neoapi = Neoapi.new.neo_lookup_service
      @neoapi.get_neo_lookup_results('3542519')
    end

    it "Should respond with an Hash of Results" do
      expect(@neoapi.get_neo_lookup_all).to be_kind_of(Hash)
    end

    it "Links should respond with an Hash of Results" do
      expect(@neoapi.get_neo_lookup_links).to be_kind_of(Hash)
    end

    it "Self should respond as a String" do
      expect(@neoapi.get_self).to be_kind_of(String)
    end

    it "NEO Reference ID should respond as a String" do
      expect(@neoapi.get_neo_reference_id).to be_kind_of(String)
    end


  end
end
