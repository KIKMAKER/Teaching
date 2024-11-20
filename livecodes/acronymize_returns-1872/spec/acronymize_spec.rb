require_relative '../acronymize.rb'

# rspec

describe "#acronymize" do
  it "returns an empty string when passed an empty string" do
    actual = acronymize("")
    expected = ""
    expect(actual).to eq(expected)
  end
  it "returns upcased acronym when passed downcased sentence" do
    actual = acronymize("laugh out loud")
    expected = "LOL"
    expect(actual).to eq(expected)
  end
  it "return the the acronym of a sentence" do
    actual = acronymize("work from home")
    expected = "WFH"
    expect(actual).to eq(expected)
  end
end
