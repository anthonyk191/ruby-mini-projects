dictionary_keys = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#Function
def substrings(input, dictionary_keys)
  #Convert to Dictionary
  dictionary = {}
  for i in dictionary_keys
    dictionary[i] = 0
  end
  
  split_input = input.split("")
  for key in dictionary.keys
    #Window Method
    index_1 = 0
    index_2 = key.length - 1
    
    for j in (0..split_input.length - key.length) #Window slides through input string
      if (split_input[index_1..index_2].join == key) #Compares dictionary key to current window
        dictionary[key] += 1
      end
      index_1 += 1
      index_2 += 1
    end
  end
  
  for key in dictionary.keys
    if dictionary[key] == 0 #Value
      dictionary.delete(key)
    end
  end
  p dictionary
end

substrings("below", dictionary_keys)

