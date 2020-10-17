def average(num_1, num_2)
  (num_1 + num_2) / 2.0
end

def average_array(arr)
  arr.sum / (arr.length * 1.0)
end

def repeat(str, num)
  output = ""
  num.times { output += str }
  output
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(sentence)
  words = sentence.split(" ")
  words.each_with_index do |word, i|
    if i % 2 == 0
      words[i] = word.upcase
    else
      words[i] = word.downcase
    end
  end
  return words.join(" ")
end