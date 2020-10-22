# to create a class
class Cat
  def initialize(name, color, age)
    @name= name
    @color = color
    @age = age
  end

  # getter methods
  def name
    @name
  end

  def age
    @age
  end

  # setter methods
  def age=(number)
    @age = number
  end

  # other methods
  def purr
    if @age > 5
      puts @name.upcase + " goes purrr..."
    else
      puts "..."
    end
  end
end

cat_1 = Cat.new("Cat1", "brown", 3)
cat_2 = Cat.new("Cat2", "white", 5)

p cat_1
p cat_2

p cat_1.name 
p cat_1.age
p cat_1.age = 10
p cat_1
cat_1.purr
cat_2.purr
