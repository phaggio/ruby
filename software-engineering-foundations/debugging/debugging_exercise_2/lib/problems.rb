# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
  if num > 1 && num < 4
    return num
  end

  curr_factor = num
  while curr_factor > 1
    if num % curr_factor == 0 && prime?(curr_factor)
      return curr_factor
    end
    curr_factor -= 1
  end

  nil
end


def prime?(num)
	return false if num < 2
  (2...num).none? { |factor| num % factor == 0 }
end


def unique_chars?(string)
  map = Hash.new(0)

  string.each_char do |char|
    if map[char] > 0
      return false
    end
    map[char] += 1
  end

  true
end


def dupe_indices(array)
  dup_map = {}

  array.each_with_index do |el, i|
    if dup_map.has_key?(el)
      dup_map[el] << i
    else
      dup_map[el] = [i]
    end
  end

  dup_map.each do |key, value|
    if value.length < 2
      dup_map.delete(key)
    end
  end 

  dup_map
end


def ana_array(arr_1, arr_2)
  if arr_1.length != arr_2.length
    return false
  end

  hash_1 = Hash.new(0)
  arr_1.each do |el|
    hash_1[el] += 1
  end

  arr_2.each do |el|
    if hash_1[el] == 0
      return false
    end
    hash_1[el] -= 1
  end

  true
end