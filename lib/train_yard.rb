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


end 