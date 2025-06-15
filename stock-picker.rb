#Function
def stock_picker(dataset)
  buy_value = dataset[0]
  sell_value = dataset[0]
  current_difference = 0
  maximum_difference = 0
  dataset.each_with_index do |current_value, index|
    buy_value = current_value
    
    dataset.each_with_index do |sub_value, sub_index|
      if sub_index.between?(index + 1, dataset.length-1)
        sell_value = sub_value
        current_difference = sell_value - buy_value
      end
      
      if current_difference > maximum_difference
        maximum_difference = current_difference
      end
      
    end
  end
  p maximum_difference
end


stock_dataset = [17,3,6,9,15,8,6,1,10]

stock_picker(stock_dataset) # => [1,4]