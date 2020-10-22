def reverser(string, &prc)
  prc.call(string.reverse)
end

def word_changer(sentence, &prc)
  words = []
  sentence.split().each do |word|
    words << prc.call(word)
  end
  words.join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
  if prc_1.call(num) > prc_2.call(num)
    prc_1.call(num)
  else
    prc_2.call(num)
  end
end

def and_selector(array, prc_1, prc_2)
  output = []
  array.each do |el|
    if prc_1.call(el) && prc_2.call(el)
      output << el
    end
  end
  output
end

def alternating_mapper(array, prc_1, prc_2)
  output = []
  array.each_with_index do |el, i|
    if i % 2 == 0
      output << prc_1.call(el)
    else
      output << prc_2.call(el)
    end
  end
  output
end