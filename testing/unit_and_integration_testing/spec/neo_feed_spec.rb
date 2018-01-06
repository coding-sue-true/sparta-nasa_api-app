require 'spec_helper'

describe Neoapi do

  context 'requesting information on Neo Feed API works correctly' do

    before(:all) do
      @neoapi = Neoapi.new.neo_feed_service
      @neoapi.get_neo_feed_results(@date_today, @date_today)
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

    it "Near Earth Objects date should respond as an Array" do
      expect(@neoapi.get_date).to be_kind_of(Array)
    end

    it "Near Earth Objects links should respond as a Hash" do
      @neoapi.get_date_links.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it "Near Earth Objects links self should respond as a String" do
      @neoapi.get_date_self.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects neo_reference_id to respond as a String" do
      @neoapi.get_neo_reference_id.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects neo name to respond as a String" do
      @neoapi.get_neo_name.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects neo jpl_url to respond as a String" do
      @neoapi.get_neo_nasa_jpl_url.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects neo absolute magnitude to respond as Float" do
      @neoapi.get_neo_absolute_magnitude_h.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it "Near Earth Objects neo estimated diameter to respond as a Array" do
      @neoapi.get_neo_estimated_diameter.each do |x|
        expect(x).to be_kind_of(Array)
      end
    end

    it "Near Earth Objects neo estimated diameter kilometers to respond as a Hash" do
      @neoapi.get_km.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it "Near Earth Objects neo estimated diameter km min to respond as Float" do
      @neoapi.get_km_estimated_diameter_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it "Near Earth Objects neo estimated diameter km max to respond as Float" do
      @neoapi.get_km_estimated_diameter_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it "Near Earth Objects neo estimated diameter meters to respond as a Hash" do
      @neoapi.get_meters.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it "Near Earth Objects neo estimated diameter meters min to respond as a Float" do
      @neoapi.get_meters_estimated_diameter_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it "Near Earth Objects neo estimated diameter meters max to respond as a Float" do
      @neoapi.get_meters_estimated_diameter_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it "Near Earth Objects neo estimated diameter miles to respond as a Hash" do
      @neoapi.get_miles.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it "Near Earth Objects neo estimated diameter miles min to respond as a Float" do
      @neoapi.get_miles_estimated_diameter_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it "Near Earth Objects neo estimated diameter miles max to respond as a Float" do
      @neoapi.get_miles_estimated_diameter_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it "Near Earth Objects neo estimated diameter feet to respond as a Hash" do
      @neoapi.get_feet.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it "Near Earth Objects neo estimated diameter feet min to respond as a Float" do
      @neoapi.get_feet_estimated_diameter_min.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it "Near Earth Objects neo estimated diameter feet max to respond as a Float" do
      @neoapi.get_feet_estimated_diameter_max.each do |x|
        expect(x).to be_kind_of(Float)
      end
    end

    it "Near Earth Objects is potentially hazardous to respond as a boolean" do
      @neoapi.get_potentially_hazardous.each do |x|
        expect(x).to be_truthy.or be_falsy
      end
    end

    it "Near Earth Objects close approach data to respond as a Array" do
      @neoapi.get_close_approach_info.each do |x|
        expect(x).to be_kind_of(Array)
      end
    end

    it "Near Earth Objects close approach date to respond as String" do
      @neoapi.get_close_approach_date.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects epoch date close approach to respond as an Integer" do
      @neoapi.get_epoch_date.each do |x|
        expect(x).to be_kind_of(Integer)
      end
    end

    it "Near Earth Objects relative velocity to respond as a Hash" do
      @neoapi.get_relative_velocity.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it "Near Earth Objects velocity km/s to respond as a string" do
      @neoapi.get_km_s.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects velocity km/h to respond as a string" do
      @neoapi.get_km_h.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects velocity mph to respond as a string" do
      @neoapi.get_mph.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects miss distance to respond as a Hash" do
      @neoapi.get_miss_distance.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it "Near Earth Objects miss distance_astronomical to respond as a string" do
      @neoapi.get_astronomical.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects miss distance_lunar to respond as a string" do
      @neoapi.get_lunar.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects miss distance_kilometers to respond as a string" do
      @neoapi.get_kilometers.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects miss distance_miles to respond as a string" do
      @neoapi.get_distance_miles.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects orbiting body to respond as a string" do
      @neoapi.get_orbiting_body.each do |x|
        expect(x).to be_kind_of(String)
      end
    end
  end
end
