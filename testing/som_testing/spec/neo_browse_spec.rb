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

    it "Page should respond with an Hash of results" do
      expect(@neoapi.get_neo_browse_page).to be_kind_of(Hash)
    end

    it "Page size should respond as an Integer" do
      expect(@neoapi.get_size).to be_kind_of(Integer)
    end

    it "Page total elements should respond as an Integer" do
      expect(@neoapi.get_total_elements).to be_kind_of(Integer)
    end

    it "Page total pages should respond as an Integer" do
      expect(@neoapi.get_total_pages).to be_kind_of(Integer)
    end

    it "Page number should respond as an Integer" do
      expect(@neoapi.get_number).to be_kind_of(Integer)
    end

    it "NEO should respond as an Array of results" do
      expect(@neoapi.get_near_earth_objects).to be_kind_of(Array)
    end

    it "NEO links should respond as a Hash of results" do
      expect(@neoapi.get_links).to be_kind_of(Hash)
    end

    it "Near Earth Objects links self should respond as a String" do
      expect(@neoapi.get_links_self).to be_kind_of(String)
    end

    it "Near Earth Objects neo_reference_id to respond as a String" do
      expect(@neoapi.get_neo_reference_id).to be_kind_of(String)
    end

    it "Near Earth Objects neo name to respond as a String" do
      expect(@neoapi.get_neo_name).to be_kind_of(String)
    end

    it "Near Earth Objects neo jpl_url to respond as a String" do
      expect(@neoapi.get_neo_nasa_jpl_url).to be_kind_of(String)
    end

    it "Near Earth Objects neo absolute magnitude to respond as Float" do
      expect(@neoapi.get_neo_absolute_magnitude_h).to be_kind_of(Float)
    end

    it "Near Earth Objects neo estimated diameter to respond as a Hash" do
      expect(@neoapi.get_neo_estimated_diameter).to be_kind_of(Hash)
    end

    it "Near Earth Objects neo estimated diameter kilometers to respond as a Hash" do
      expect(@neoapi.get_km).to be_kind_of(Hash)
    end

    it "Near Earth Objects neo estimated diameter km min to respond as Float" do
      expect(@neoapi.get_km_estimated_diameter_min).to be_kind_of(Float)
    end

    it "Near Earth Objects neo estimated diameter km max to respond as Float" do
      expect(@neoapi.get_km_estimated_diameter_max).to be_kind_of(Float)
    end

    it "Near Earth Objects neo estimated diameter meters to respond as a Hash" do
      expect(@neoapi.get_meters).to be_kind_of(Hash)
    end

    it "Near Earth Objects neo estimated diameter meters min to respond as a Float" do
      expect(@neoapi.get_meters_estimated_diameter_min).to be_kind_of(Float)
    end

    it "Near Earth Objects neo estimated diameter meters max to respond as a Float" do
      expect(@neoapi.get_meters_estimated_diameter_max).to be_kind_of(Float)
    end

    it "Near Earth Objects neo estimated diameter miles to respond as a Hash" do
      expect(@neoapi.get_miles).to be_kind_of(Hash)
    end

    it "Near Earth Objects neo estimated diameter miles min to respond as a Float" do
      expect(@neoapi.get_miles_estimated_diameter_min).to be_kind_of(Float)
    end

    it "Near Earth Objects neo estimated diameter miles max to respond as a Float" do
      expect(@neoapi.get_miles_estimated_diameter_max).to be_kind_of(Float)
    end

    it "Near Earth Objects neo estimated diameter feet to respond as a Hash" do
      expect(@neoapi.get_feet).to be_kind_of(Hash)
    end

    it "Near Earth Objects neo estimated diameter feet min to respond as a Float" do
      expect(@neoapi.get_feet_estimated_diameter_min).to be_kind_of(Float)
    end

    it "Near Earth Objects neo estimated diameter feet max to respond as a Float" do
      expect(@neoapi.get_feet_estimated_diameter_max).to be_kind_of(Float)
    end

  end
end
