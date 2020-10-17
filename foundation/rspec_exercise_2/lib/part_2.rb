def palindrome?(string)
  left = 0
  right = string.length - 1

  while left < right
    if string[left] != string[right]
      return false
    end
    left += 1
    right -= 1
  end

  return true
end

def substrings(string)
  output = []

  curr_index = 0

  while curr_index < string.length
    j = curr_index
    while j < string.length
      output << (string[curr_index..j])
      j += 1
    end
    curr_index += 1
  end

  output
end


def palindrome_substrings(string)
  substrings(string).select { |sub_string| palindrome?(sub_string) && sub_string.length > 1 }
end