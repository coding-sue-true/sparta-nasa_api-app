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
      @neoapi.get_links.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it "Near Earth Objects links self should respond as a String" do
      @neoapi.get_links_self.each do |x|
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

    it "Near Earth Objects neo estimated diameter to respond as a Hash" do
      @neoapi.get_neo_estimated_diameter.each do |x|
        expect(x).to be_kind_of(Hash)
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
      @neoapi.get_close_approach_data.each do |x|
        expect(x).to be_kind_of(Array)
      end
    end

    it "Near Earth Objects orbital data to respond as a Hash of results" do
      @neoapi.get_orbital_data.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it "Near Earth Objects orbital id to respond as a String" do
      @neoapi.get_orbit_id.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects orbital determination date to respond as a String" do
      @neoapi.get_orbit_determin_date.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects orbital uncertainty to respond as a String" do
      @neoapi.get_orbit_uncertainty.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects orbit minimun intersection to respond as a String" do
      @neoapi.get_orbit_min_intersec.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects jupiter tisserand invariant to respond as a String" do
      @neoapi.get_jupiter_tisserand_inv.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects epoch_osculation to respond as a String" do
      @neoapi.get_epoch.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects eccentricity to respond as a String" do
      @neoapi.get_eccentricity.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects semi_major_axis to respond as a String" do
      @neoapi.get_semi_major_axis.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects inclination to respond as a String" do
      @neoapi.get_inclination.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects ascending_node_longitude to respond as a String" do
      @neoapi.get_ascending_node_long.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects orbital period to respond as a String" do
      @neoapi.get_orbital_period.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects perihelion_distance to respond as a String" do
      @neoapi.get_perihelion_distance.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects perihelion_argument to respond as a String" do
      @neoapi.get_perihelion_argument.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects aphelion_distance to respond as a String" do
      @neoapi.get_aphelion_distance.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects perihelion_time to respond as a String" do
      @neoapi.get_perihelion_time.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects mean_anomaly to respond as a String" do
      @neoapi.get_mean_anomaly.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects mean_motion to respond as a String" do
      @neoapi.get_mean_motion.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects equinox to respond as a String" do
      @neoapi.get_equinox.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it "Near Earth Objects orbital id to respond as a String" do
      @neoapi.get_orbit_id.each do |x|
        expect(x).to be_kind_of(String)
      end
    end
  end
end
