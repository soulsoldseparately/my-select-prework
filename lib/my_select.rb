def my_select(collection)
  if block_given?
    counter = 0
    new_collection = []
    while counter < collection.length
      if yield(collection[counter])
        new_collection << collection[counter]
      end
      counter += 1
    end
    new_collection
  end
end
