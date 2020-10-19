# global scope with $
$message = "Hello"

def say_hello
  p $message
end

say_hello

# constant is denoted syntactically by beginning the name with capital letters
FOOD = "sushi"
p FOOD

# can't reassign constant but can still mutate it
FOOD[0] = "S"
p FOOD

# constant exist in global scope

def say_food
  p FOOD
end

say_food