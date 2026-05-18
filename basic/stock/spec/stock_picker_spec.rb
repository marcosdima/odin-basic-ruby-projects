require_relative '../stock_picker'

describe "Stock Picker" do
  it "Returns the best days to buy and sell for maximum profit." do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1,4])
    expect(stock_picker([1, 2, 3, 4, 5])).to eq([0, 4])
    expect(stock_picker([3, 1, 4, 1, 5])).to eq([1, 4])
    expect(stock_picker([5, 5])).to eq([0, 1])
  end
  it "Returns [0, 0] when there are no prices." do
    expect(stock_picker([])).to eq([0, 0])
  end
  it "Returns [0, 0] when there is only one price." do
    expect(stock_picker([5])).to eq([0, 0])
  end
  it "Returns the earliest pair of days when there are multiple pairs with the same profit." do
    expect(stock_picker([1, 5, 3, 5])).to eq([0, 1])
  end
  it "If the best profit is negative, it should still return the best days to minimize loss." do
    expect(stock_picker([5, 4, 3, 2, 1])).to eq([0, 1])
    expect(stock_picker([1000, 100, 50, 25, 15])).to eq([3, 4])
  end
end