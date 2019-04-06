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

  describe '8:15 example' do
    before(:each) do
      @clock = Clock.new('8:15 PM')
    end

    it "gets the proper minute" do
      expect(@clock.hour).to eq(8)
    end

    it "gets the proper minute" do
      expect(@clock.min).to eq(15)
    end

    it "gets the proper hour angle" do
      expect(@clock.hour_angle).to eq(247.5)
    end

    it "gets the proper angle" do
      expect(@clock.angle).to eq(157.5)
    end
  end

  describe '5:00 example' do
    before(:each) do
      @clock = Clock.new('5:00 PM')
    end

    it "gets the proper angle" do
      expect(@clock.angle).to eq(150)
    end
  end

  describe '2:20 example' do
    before(:each) do
      @clock = Clock.new('2:20 PM')
    end

    it "gets the proper angle" do
      expect(@clock.angle).to eq(50)
    end
  end

  describe '12:00 example' do
    before(:each) do
      @clock = Clock.new('12:00 PM')
    end

    it "gets the proper angle" do
      expect(@clock.angle).to eq(0)
    end
  end

  describe '12:15 example' do
    before(:each) do
      @clock = Clock.new('12:15 PM')
    end

    it "gets the proper angle" do
      expect(@clock.angle).to eq(82.5)
    end
  end

  describe '4:00 example' do
    before(:each) do
      @clock = Clock.new('4:00 AM')
    end

    it "gets the proper angle" do
      expect(@clock.angle).to eq(120)
    end
  end

  describe '8:15 example' do
    before(:each) do
      @clock = Clock.new('8:15 AM')
    end

    it "gets the proper angle" do
      expect(@clock.angle).to eq(157.5)
    end
  end

end