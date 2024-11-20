require_relative '../citizen.rb'

describe Citizen do
  describe "#can_vote?" do
    it "returns true if the citizen is 18 years old" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end
    it "returns false if the citizen is less than 18 years old" do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
    it "returns true if the citizen is older than 18 years old" do
      citizen = Citizen.new("", "", 21)
      expect(citizen.can_vote?).to eq(true)
    end
  end
  describe "#full_name" do
    it "returns the full name capitalized" do
      citizen = Citizen.new("michael", "angelo", 48)
      expect(citizen.full_name).to eq("Michael Angelo")
    end
  end
end
