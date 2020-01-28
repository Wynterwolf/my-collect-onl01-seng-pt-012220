
def my_collect(argument)
  if block_given?
    i = 0
    collection = []
    while i < argument.length
    
      my_collect(argument) do |lang|
    lang.upcase
  end
  
      collection << yield(argument[i])
      i += 1
    end
  else
    puts "Hey! Give me a block!"
    return collection
  end

end