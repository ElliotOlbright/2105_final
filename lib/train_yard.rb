class TrainYard
  attr_reader :location, :trains
  def initialize(data_hash)
    @location = data_hash[:location]
    @trains = []
  end 

  def add_train(train)
    @trains.push(train)
  end 
end 