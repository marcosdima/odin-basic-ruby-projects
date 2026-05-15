def bubble_sort(prices)
  n = prices.length
  prices.each_with_index do |_, i|
    for j in (0...n-i-1)
      if prices[j] > prices[j+1]
        prices[j], prices[j+1] = prices[j+1], prices[j]
      end
    end
  end
end

array = ARGV[0] ? ARGV[0].split(',').map(&:to_i) : [4,3,78,2,0,2]

p bubble_sort(array)