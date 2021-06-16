class Car 
  attr_reader :type
  def initialize(data_hash)
    @type = data_hash[:type]
  end 
end 