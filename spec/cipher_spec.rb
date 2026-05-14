require_relative '../cipher'

describe "Caesar Cipher" do
  it "Shifts letters by the specified number of positions." do
    expect(caesar_cipher("ABC", 3)).to eq("DEF")
  end

  it "Wraps around the alphabet." do
    expect(caesar_cipher("XYZ", 3)).to eq("ABC")
  end

  it "Handles negative shifts." do
    expect(caesar_cipher("DEF", -3)).to eq("ABC")
  end

  it "Respects case of letters." do
    expect(caesar_cipher("AbC", 2)).to eq("CdE")
  end

  it "Just change letters." do
    expect(caesar_cipher("a123!@#z", 5)).to eq("f123!@#e")
  end

   it "If 0 is received, does nothing." do
    expect(caesar_cipher("Hello, World!", 0)).to eq("Hello, World!")
  end
end