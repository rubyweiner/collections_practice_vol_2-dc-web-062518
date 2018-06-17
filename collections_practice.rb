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
  
