# creating a Proc
doubler = Proc.new { |num| num * 2 }
square = Proc.new { |num| num * num }
negate = Proc.new { |num| -1 * num }

# calling a Proc
p doubler
p doubler.call(5)
p doubler.call(7)

is_even = Proc.new do |num|
  num % 2 == 0
end

p is_even.call(12)

# passing a Proc to a method
def add_and_proc(num_1, num_2, prc)
  sum = num_1 + num_2
  p prc.call(sum)
end

add_and_proc(1, 4, doubler)
add_and_proc(1, 4, square)

# automatic conversion from block to proc, when see &, we must pass in a block
def add_and_proc_2(num_1, num_2, &prc)
  sum = num_1 + num_2
  p prc.call(sum)
end

# by using the & operator on the third param, ruby knows to automatically convert the block into proc
add_and_proc_2(1, 4) { |num| num * 2 }

# we can use the & operator again to convert a proc back to block and pass it to method that expecting block
add_and_proc_2(1, 4, &doubler)


# example
p [1, 2, 3].map { |num| num * 2 }
p [1, 2, 3].map(&doubler)