def stock_picker(stock_prices_arr)
  max_diff = -999_999 # Any min value
  day1 = 0
  day2 = 0
  stock_prices_arr.each_with_index do |p1, idx1|
    stock_prices_arr.each_with_index do |p2, idx2|
      next unless idx1 < idx2 and max_diff < p2 - p1 # Check for sell to occur after buy and max buy-sell difference

      max_diff = p2 - p1
      day1 = idx1
      day2 = idx2
    end
  end
  [day1, day2] # returning buy/sell days
end

print(stock_picker([17, 3, 6, 9, 8, 6, 15, 1, 10]))
