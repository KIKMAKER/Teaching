require_relative 'acronymize.rb'
describe "#acronymize" do
  it "returns an empty string when passed an empty string" do
    actual = acronymize("")
    expected = ""
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "returns the acronym on a downcased sentence" do
    actual = acronymize("laugh out loud")
    expected = "LOL"
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "returns the acronym on a upcased sentence" do
    actual = acronymize("WHAT THE FUCK")
    expected = "WTF"
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

end
