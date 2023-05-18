class House
  attr_reader :address, :rooms
  attr_accessor :price
  def initialize(price, address)
    @price = price.gsub(/\D/,'').to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price >= 500000
      true
    else
      false
    end
  end

  def rooms_from_category(category)
    rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    house_area = 0
    rooms.each do |room|
      house_area += room.area
    end
    house_area
  end

  def details 
    {"price" => price, "address" => address} 
  end
end