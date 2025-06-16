require 'pry-byebug'

test_array = [4,3,78,2,0,2] #Should be sorted to look like [0,2,2,3,4,78]

def bubble_sort(input_array)
    p input_array
    for j in (0..input_array.length-1) do
      for i in (0..input_array.length-2-j) do
          first_element = input_array[i]
          second_element = input_array[i+1]
          # binding.pry
          if first_element > second_element
              input_array[i], input_array[i+1] = second_element, first_element
              p input_array
          end
      end
    end
    return input_array
end

bubble_sort(test_array)

