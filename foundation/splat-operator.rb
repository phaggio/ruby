# splat(*) operator in ruby

def method(arg1, arg2, *other_args)
  p arg1
  p arg2
  p other_args
end

# best practice to put splat arg in the end

method("a", "b", "c", "d", "e")
method("a", "b")


# use splat to decompose an array
def greet(first, last)
  p "Hi, " + last + ", " + first
end

names = ["Richard", "Wang"]

greet(*names)

# act like a spread
arr_1 = ["a", "b"]
arr_2 = ["d", "e"]
arr_3 = [ *arr_1, "c", *arr_2 ]

p arr_3

# decompose a hash
my_hash = { a: 1, b: 2 }
new_hash = { **my_hash, c: 3 }
p new_hash
