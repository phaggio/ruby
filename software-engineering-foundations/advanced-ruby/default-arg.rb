# default arg
def repeat(message, num=1)
  message * num
end

def greet(person_1, person_2=nil)
  if person_2.nil?
    p "Hi " + person_1
  else
    p "Hi " + person_1 + " and " + person_2
  end
end


# a method that accepts a hash as an arg, can omit the braces
def method(hash)
  p hash
end

# they're the same
method({"name"=>"Richard", "email"=>"test@example.com"})
method("name"=>"Richard", "email"=>"test@example.com")