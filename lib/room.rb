class Room
attr_accessor :is_painted
attr_reader :category, :length, :width, :area
  def initialize(category, length, width)
    @category = category
    @is_painted = false
    @area = (length * width.to_i)
  end

  def paint
    @is_painted = true
  end
end
