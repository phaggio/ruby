# symbol is similar to string but not the same type
str = "Hello"
sym = :hello

puts str.length
puts sym.length

puts str[1]
puts sym[1]

puts str == sym

# symbols are immutable
# sym=[0] = "h"

# use Ruby's object_id to see memory address
puts str.object_id
puts sym.object_id

# When initializing a hash with symbol keys, Ruby offers a shortcut. 
# We can drop the rocket (=>) and move the colon (:) to the right of the symbol:

obj = { name:"Richard", id:"phaggio"}
puts obj
puts obj[:name]