class Room
  attr_reader :capacity, :patients
  attr_accessor :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity]
    @patients = attributes[:patients] || []
  end

  def full?
    @capacity == @patients.count
  end

  def add(patient)
    if full?
      puts "sorry room is full"
      # raise StandardError, "Room is full!"
    else
      @patients << patient
      patient.room = self
    end
  end

end
