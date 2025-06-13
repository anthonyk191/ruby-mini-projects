dictionary = {}
dictionary_keys = ["how", "ow", "owh"]

#Creating dictionary
for i in dictionary_keys
  dictionary[i] = 0
end

#Function
def substrings(input, dictionary)
    split_input = input.split("")


    for i in dictionary.keys
      dictionary_word = i
      length_dictionary_word = dictionary_word.length
      #Window Method
      index_1 = 0
      index_2 = length_dictionary_word - 1

      for j in (0..split_input.length - length_dictionary_word) #Window slides through input string
        if (split_input[index_1..index_2].join == dictionary_word) #Compares dictionary key to current window
          dictionary[dictionary_word] += 1
        end
        index_1 += 1
        index_2 += 1
      end
    end
    p dictionary
end

substrings("howhow", dictionary) #{"how" => 1}

