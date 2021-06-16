require 'rspec'
require './lib/car'
require './lib/train'



RSpec.describe Train do
  describe 'Object Creation' do
    before :each do
      car1 = Car.new({type: 'Mail', weight: 5})
      car2 = Car.new({type: 'Passengers', weight: 1})
      train1 = Train.new({name: 'Thomas', type: 'Tank'})
    end

    it 'exists do' do
      expect(@train1).to be_a(Train)
    end

    it 'has readable attributes' do
      expect(@train1.name).to eq('Thomas')
      expect(@train1.type).to eq('Tank')
      expect(@train1.cargo).to eq({})
    end 
  end
end