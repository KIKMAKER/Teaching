require_relative "../acronymize"

describe "#acronymize" do
  it "returns an empty string when passed an empty string" do
    actual = acronymize("")
    expected = ""
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "returns an acronym when passed a sentence" do
    actual = acronymize("Laugh out loud")
    expected = "LOL"
    expect(actual).to eq(expected) # passes if `actual == expected`
  end
end
