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
    #return modified collection

my_collect(collection) do |name, language|
  name.split(" ").first
  language.upcase
end
