class Train 
  attr_reader :name, :type, :cargo

  def initialize(data_hash)
    @name = data_hash[:name]
    @type = data_hash[:type]
    @cargo = {}
  end 

  def count_cars(car)
    @cargo.values.sum
  end 
   
  def add_cars(car, num)
    if cargo[car]
      cargo[car] += num
    else
      cargo[car] = num
    end 
  end 
end 