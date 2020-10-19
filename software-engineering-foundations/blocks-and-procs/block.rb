# two ways to pass a block into a method
p [1, 2, 3].map { |num| -(num * 2) }
arr = [1, 2, 3].map do |num|
  -(num * 2)
end
p arr

# return keyword pertains to methods, not blocks
# Correct:
def double_eles(arr)
  arr.map do |ele|
    ele * 2
  end
end
p double_eles([1,2,3]) #=> [2,4,6]


# Incorrect:
def double_eles(arr)
  arr.map do |ele|
    return ele * 2
  end
end
p double_eles([1,2,3]) #=> 2


# using methods as blocks
p ["a", "b", "c"].map { |str| str.upcase }  #=> ["A", "B", "C"]
p [1, 2, 5].select { |num| num.odd? }       #=> [1, 5]

# shortcuts 
# In Ruby, we cannot directly pass a method into another method, so we need to use the & operator.
p ["a", "b", "c"].map(&:upcase) #=> ["A", "B", "C"]
p [1, 2, 5].select(&:odd?)      #=> [1, 5]


p ["a", "b", "c"].map(&:upcase) # => ["A", "B", "C"]
p [1, 2, 3].map(&:upcase) # => undefined method 'upcase'

