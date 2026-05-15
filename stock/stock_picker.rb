def stock_picker(prices)
  # Initilize the result array.
  best_days = [0, 0]

  # Discard cases where there are no prices or only one price, since we can't make a profit.
  if prices.empty? || prices.length == 1
    return best_days
  end
  
  # Set the initial minimum price and index to the first price in the list.
  min_index = 0
  min_price = prices[min_index]
  best_profit = nil
  
  prices.each_with_index do |price, i|
    # Skip the first price since it's our initial minimum.
    if i == 0; next end

    # Calculate the profit with the current price and the minimum price found so far.
    profit = price - min_price
    
    # If the profit is better that the best profit found so far, update the best profit and the best days.
    if !best_profit || profit > best_profit
      best_profit = profit
      best_days = [min_index, i]
    end

    # Then check if the current price is a new minimum price. If it is, update the minimum price and index.
    if price < min_price
      min_price = price
      min_index = i
    end
  end

  best_days
end


stocks = ARGV[0] ? ARGV[0].split(',').map(&:to_i) : [1, 5, 3, 5]

p stock_picker(stocks) # [1,4]  # for a profit of $15 - $3 == $12