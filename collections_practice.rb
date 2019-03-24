def begins_with_r(array)
  array.each do |word|
    if word[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  output = []
  array.each do |word|
    j = 0
    while j < word.length do
      if word[j] == 'a'
        output.push(word)
      end
      j += 1
    end
  end
  return output
end

def first_wa(array)
  array.each do |word|
    if word[0] + word[1] == 'wa'
      return word
    end
  end
end

def remove_non_strings(array)
  output = []
  array.each do |element|
    if element.class == String
      output.push(element)
    end
  end
  return output
end

def count_elements(array)
  i = 0
  while i < array.length do
    array[i][:count] = 1
    j = 1
    if j == i
      j += 1
    end
    while j != i && j < array.length do
      if array[i][:name] == array[j][:name]
        array[i][:count] += 1
        array.delete(array[j])
      end
      j += 1
    end
    i += 1
  end
  return array
end

def merge_data(keys, data)
  names = []
  output = []
  keys.each do |info|
    names.push(info[:first_name])
    output.push(info)
  end
  i = 0
  while i < output.length do
    data.each do |both, name, stats|
      output[i] = output[i] + stats
    end
  end
  return output
end



