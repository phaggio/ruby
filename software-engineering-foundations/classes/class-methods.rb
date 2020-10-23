# instance method
class Dog
  def initialize(name, bark)
    @name = name
    @bark = bark
  end

  def speak
    @name + " says " + @bark
  end

end

my_dog = Dog.new("Fido", "woof")
p my_dog.speak
