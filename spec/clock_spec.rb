require_relative '../app/clock.rb'

describe Clock do

  before(:each) do
    @clock = Clock.new('12:34 PM')
  end

  describe 'inadequate arguments' do
    it "gets the proper angle" do
      expect { Object.new('815 AM') }.to raise_error(ArgumentError)
    end
  end

  describe '.time' do
    it "properly formats the time" do
      expect(@clock.time).to eq([12, 34])
    end
  end

  describe '.min' do
    it "gets the proper min" do
      expect(@clock.min).to eq(34)
    end
  end

  describe '.hour' do
    it "gets the proper hour" do
      expect(@clock.hour).to eq(12)
    end
  end

end