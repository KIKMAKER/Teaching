class Patient
  attr_reader :name, :age
  attr_accessor :room, :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
    @blood_type = attributes[:blood_type]
    @cured = attributes[:cured] || false
  end

  def cured?
    @cured
  end

  def cure!
    @cured = true
  end

  # def room
  #   @room
  # end
end


# ANY TEST INSTANCES OUTSIDE OF THE CLASS
