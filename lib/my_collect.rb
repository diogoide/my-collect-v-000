def  my_collect(collection)
  if block_given?
    i = 0
    while i < collection.length
      yield(collection[i])
        i += 1
    end
    collection
  else
    false
  end
end
    #return modified collection
collection = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(collection) do |name|
  name.split(" ").first
end

collection = ["ruby,", "javascript", "python", "objective-c"]
my_collect(collection) do |lang|
  lang.upcase
end
