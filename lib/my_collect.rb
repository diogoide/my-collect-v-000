def  my_collect(collection)
  i = 0
  while i < collection.size
    if
    yield collection[i]
    i += 1
  end
end
    #return modified collection

my_collect(collection) do |name, language|
  name.split(" ").first
  language.upcase
end 
