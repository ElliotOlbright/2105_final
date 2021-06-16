class TrainYard
  attr_reader :location, :trains
  def initialize(data_hash)
    @location = data_hash[:location]
    @trains = []
  end 

  def add_train(train)
    @trains.push(train)
  end 

  def type_of_trains
     trains = @trains.reduce([]) { |acc, train| acc << train.type }
     trains.uniq.sort
  end
  
  def trains_containing(car)
    @trains.reduce([]) do |acc, train| 
      acc << train if train.cargo.include?(car)
      acc
    end 
  end

  def sorted_cargo_list
    types = []
    @trains.each do |train|
      train.cargo.each do |car, num|
        types << car.type
      end
    end  
    types.uniq.sort
  end

  def total_inventory
  inv = Hash.new(0)
    @trains.each do |train|
      train.cargo.each do |car, amount|
      inv[car] = inv[car] + train.count_cars(car)
      end
    end
  inv
  end
end 