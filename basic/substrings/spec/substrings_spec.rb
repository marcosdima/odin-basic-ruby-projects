require_relative '../substrings'

describe "Substrings" do
  dictionary = ["below","down","go","going","horn","how","howdy","it","I","low","own","part","partner","sit"]

  it "Finds substrings in a single word" do
    expect(substrings('below', dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it "Finds substrings in a sentence with punctuation and varying case" do
    expected = { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
    expect(substrings("Howdy partner, sit down! How's it going?", dictionary)).to eq(expected)
  end

  it "Returns an empty hash when no words match" do
    expect(substrings("xyz", dictionary)).to eq({})
  end

  it "Is case insensitive" do
    expected = { "below" => 1, "low" => 1 }
    expect(substrings("BeLoW", dictionary)).to eq(expected)
    expect(substrings("BELOW", dictionary)).to eq(expected)
    expect(substrings("below", dictionary)).to eq(expected)
  end
end
