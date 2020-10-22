# class variables
class Car
  NUM_WHEELS = 4

  # class variable
  @@num_wheels = 4

  # changing class variable
  def self.upgrade_to_flying_cars
    @@num_wheels = 0
  end

  def initialize(color)
    @color = color
  end

  # getter for @color instance variable
  def color
    @color
  end

  # getter for @@num_wheels class variable
  def num_wheels
    @@num_wheels
  end

  def NUM_WHEELS
    NUM_WHEELS
  end
end

car_1 = Car.new("red")
car_2 = Car.new("white")

p car_1.num_wheels
# changing class variable affects every instance that was created
Car.upgrade_to_flying_cars
p car_1.num_wheels
p car_2.num_wheels
p car_1.NUM_WHEELS
p car_2.NUM_WHEELS