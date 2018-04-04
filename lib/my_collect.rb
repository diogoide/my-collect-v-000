def  my_collect(array)
  if block_given?
    i = 0
    collection = []
    while i < array.length
      collection << yield(array[i])
        i += 1
    end
    return collection
  else
    false
  end
end
    #return modified collection
students = ["Tim Jones", "Tom Smith", "Sophie Johnson", "Antoin Miller"]

my_collect(students) do |name|
    name.split(" ").first
end


languages = ["ruby,", "javascript", "python", "objective-c"]

my_collect(languages) do |lang|
   lang.upcase
end
