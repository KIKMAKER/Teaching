require_relative "../citizen.rb"

describe Citizen do
  # TODO
  describe "#can_vote?" do
    it "returns true if the citizen is 18 years or older" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
      # acronomyze("Laugh out loud") == "LOL"
    end
  end

  describe "full_name" do
    it "returns a string containing the citizens first and second name" do
      citizen = Citizen.new("Meg", "Street", 18)
      expect(citizen.full_name).to eq("Meg Street")
    end
  end

end
