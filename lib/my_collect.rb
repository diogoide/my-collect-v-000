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
students = ["Tim Jones", "Tom Smith", "Sophie Johnson", "Antoin Miller"]
my_collect(students) do |name|
   name.split(" ").first = first_name
   return first_name
end


languages = ["ruby,", "javascript", "python", "objective-c"]
my_collect(languages) do |lang|
   lang.upcase = language_upper
   return language_upper
end
