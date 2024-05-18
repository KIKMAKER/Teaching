require_relative '../animal'

describe Animal do
  describe "#name" do
    it "should return animal name" do
      animal = Animal.new("Timon")
      expect(animal.name).to eq("Timon")
    end
  end

end
