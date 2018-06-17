def begins_with_r (collection)
  collection.all? do |element|
    element[0] == "r"
  end
end

def contain_a (collection)
  collection.select do |element|
    element.include?("a")
  end
end

def first_wa (collection)
  collection.find do |element|
    element[0..1] == "wa"
  end
end

def remove_non_strings(collection)
  collection.delete_if do |element| 
    element.class != String
  end
end

def count_elements (collection)
  collection.group_by(&:itself).map do |key, value|
    key.merge(:count => value.length)
  end
end

def merge_data(keys, data)
  keys.each do |object|
    matchingProperty = object[:first_name]
    puts object
    otherObject = data[0][matchingProperty]
    
    otherObject.each do |property, value|
      object[property] = value
    end
  end
end

def find_cool(collection)
  if collection[1].values[1] == "cool"
    [collection[1]]
  end
end

def organize_schools(schools)
  array = []
  schools.values.to_a.each do |value|
    array << value.values
  end
  school_array = array.flatten.uniq.sort

  h1 = {schools.to_a[0][1].values[0] => [schools.to_a[0][0], schools.to_a[1][0], schools.to_a[4][0]]}
  h2 = {school_array[0] => [schools.to_a[3][0]]}
  h3 = {school_array[2] => [schools.to_a[2][0], schools.to_a[5][0]]}
  h = {}
  h.merge!(h1)
  h.merge!(h2)
  h.merge!(h3)
  h
end
