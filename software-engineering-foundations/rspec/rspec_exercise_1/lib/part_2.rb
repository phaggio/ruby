def hipsterfy(str)
  vowels = "aeiouAEIOU"
  i = str.length - 1

  while i >= 0
    if vowels.include?(str[i])
      return str[0...i] + str[i + 1..-1]
    end
    i -= 1
  end

  str
end

def vowel_counts(str)
  counts = Hash.new(0)
  vowels = "aeiou"
  str.each_char do |char|
    if vowels.include?(char.downcase)
      counts[char.downcase] += 1
    end
  end

  counts
end

def caesar_cipher(message, n)
  alphabet = "abcdefghijklmnopqrstuvwxyz"

  message.each_char.with_index do |char, i|
    if alphabet.include?(char)
      old_index = alphabet.index(char)
      new_index = (old_index + n) % 26
      message[i] = alphabet[new_index]
    end
  end

  message
end