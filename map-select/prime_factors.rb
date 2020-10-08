# Write a method prime_factors that takes in a number and returns an array 
# containing all of the prime factors of the given number.

def prime_factors(num)
  output = []
  (2...num).each do |factor|
    if num % factor == 0 && prime?(factor)
      output.push(factor)
    end
  end
  return output
end

def prime?(num)
  if num < 2 
    return false
  end
    
  (2...num).each do |denum|
    if num % denum == 0
      return false
    end
  end
  
  return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts

