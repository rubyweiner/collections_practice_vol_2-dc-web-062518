def begins_with_r (collection)
  collection.all? do |element|
    element[0] == 'r'
  end
end
