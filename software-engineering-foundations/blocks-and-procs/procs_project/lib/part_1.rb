def my_map(array, &prc)
  output = []
  array.each do |el|
    output << prc.call(el)
  end
  output
end

def my_select(array, &prc)
  output = []
    array.each do |el|
      if prc.call(el) 
        output << el
      end
    end
  output
end

def my_count(array, &prc)
  count = 0
    array.each do |el|
      if prc.call(el)
        count += 1
      end
    end
  count
end

def my_any?(array, &prc)
  array.each do |el|
    if prc.call(el)
      return true
    end
  end
  false
end

def my_all?(array, &prc)
  array.each do |el|
    if !prc.call(el)
      return false
    end
  end
  true
end

def my_none?(array, &prc)
  array.each do |el|
    if prc.call(el)
      return false
    end
  end
  return true
end