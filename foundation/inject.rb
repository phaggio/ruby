# inject method enume iterable, keep two params, accum and curr

puts [11, 7, 2, 4].inject { |acc, curr| acc + curr }
# by default it starts with with acc = 11, curr = 7


# find mim
min_num = [11, 7, 2, 4].inject do | acc, curr |
  if curr < acc
    curr
  else
    acc
  end
end

puts min_num

# default acc
puts [11, 7, 2, 4].inject(100) { | acc, curr | acc + curr }


# sum all even numbers
puts [11, 7, 2, 4].inject(0) { | acc, curr| 
  if curr.even?
    acc + curr
  else
    acc
  end
}