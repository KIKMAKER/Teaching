class Patient
  attr_reader :name
  attr_accessor :room, :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name] || "John Doe"
    @blood_type = attributes[:blood_type]
    @address = attributes[:address]
    @cured = attributes[:cured] || false
  end

  def cured?
    # puts "#{self.name} is in the hospital"
    @cured
  end

  def cure!
    @cured = true
  end

  # def room=(new_room)
  #   @room = new_room
  # end
end
