require 'rspec'
require './lib/car'
require './lib/train'



RSpec.describe Car do
  describe 'Object Creation' do
    before :each do
      @car1 = Car.new({type: 'Mail', weight: 5})
    end

    it 'exists do' do
      expect(@car1).to be_a(Car)
    end

    it 'has readable attributes' do
      expect(@car1.type).to eq('Mail')
    end 
  end
end