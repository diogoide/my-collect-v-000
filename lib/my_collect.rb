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

my_collect(["Tim", "Tom", "Jim"]) do |name|
  name.split(" ").first
end

#my_collect(["ruby,", "javascript", "python", "objective-c"]) do |language|
  #language.upcase
#end
