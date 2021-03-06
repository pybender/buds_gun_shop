require File.dirname(__FILE__) + '/unit_helper'

describe BudsGunShop::Manufacturer do

  describe 'built without any values' do
    before do
      @manufacturer = BudsGunShop::Manufacturer.new
    end

    it "should not be valid" do
      expect(@manufacturer).not_to be_valid
    end
  end

  describe 'built with just name' do
    before do
      @manufacturer = BudsGunShop::Manufacturer.new(name: 'Foo')
    end

    it "should not be valid" do
      expect(@manufacturer).not_to be_valid
    end
  end

  describe 'built with just id' do
    before do
      @manufacturer = BudsGunShop::Manufacturer.new(id: '123')
    end

    it "should not be valid" do
      expect(@manufacturer).not_to be_valid
    end
  end

  describe 'built with name and id' do
    before do
      @manufacturer = BudsGunShop::Manufacturer.new(name: 'Foo', id: '123')
    end

    it "should be valid" do
      expect(@manufacturer).to be_valid
    end
  end

end
