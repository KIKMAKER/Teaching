class Room
  attr_accessor :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @capacity == @patients.size
  end

  def add(patient)
    # unless @capacity == @patients.size
    unless self.full?
      patient.room = self
      @patients << patient
    else
      puts "Sorry room was already full, #{patient.name} was not added."
      # raise StandardError, "Room is full!" if full?
    end
  end


end
