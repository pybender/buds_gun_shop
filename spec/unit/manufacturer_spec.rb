require File.dirname(__FILE__) + '/unit_helper'

class ManufacturerSpec < MiniTest::Spec

  describe 'Manufacturer' do

    describe 'built without any values' do

      before do
        @manufacturer = BudsGunShop::Manufacturer.new
      end

      it "should not be valid" do
        @manufacturer.wont_be :valid?
      end

    end

    describe 'built with just name' do

      before do
        @manufacturer = BudsGunShop::Manufacturer.new(:name => 'Foo')
      end

      it "should not be valid" do
        @manufacturer.wont_be :valid?
      end

    end

    describe 'built with just id' do

      before do
        @manufacturer = BudsGunShop::Manufacturer.new(:id => '123')
      end

      it "should not be valid" do
        @manufacturer.wont_be :valid?
      end

    end

    describe 'fetching all manufacturers' do

      before do
        VCR.use_cassette('manufacturers_ajax') do
          @manufacturers = BudsGunShop::Manufacturer.all
        end
      end

      it "should create valid manufacturers" do
        @manufacturers.each{|m| m.must_be :valid?}
      end

    end

  end

end