require_relative '../bubble_sort'

describe "Bubble Sort" do
  it "Sorts an array of integers in ascending order." do
    expect(bubble_sort([4,3,78,2,0,2])).to eq([0,2,2,3,4,78])
  end

  it "Returns an empty array when given an empty array." do
    expect(bubble_sort([])).to eq([])
  end

  it "Returns the same single-element array unchanged." do
    expect(bubble_sort([5])).to eq([5])
  end

  it "Handles negative numbers and duplicates." do
    expect(bubble_sort([3, -1, 0, -1, 2])).to eq([-1, -1, 0, 2, 3])
  end

  it "Leaves an already sorted array unchanged." do
    expect(bubble_sort([1,2,3,4,5])).to eq([1,2,3,4,5])
  end
end