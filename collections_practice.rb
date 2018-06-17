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
end
