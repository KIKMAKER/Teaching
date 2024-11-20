require_relative 'patient'
class Room
  attr_reader :capacity, :patients
  attr_accessor :id

  class FullRoom < StandardError ; end

  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @capacity == @patients.size
  end

  def add(patient)

    raise FullRoom, 'Room is full!' if full?

    @patients << patient
    patient.room = self
    # unless self.full?
    #   @patients << patient
    # else
    #   puts "sorry room is full"
    # end
  end
end

room = Room.new(capacity: 2)
gary = Patient.new({ name: 'Gary', age: 43 })
room.add(gary)
sam = Patient.new(name: 'Sammy', age: 27)
oscar = Patient.new(name: 'Oscar', age: 26, blood_type: 'A+')
room.add(sam)
room.add(oscar)


sam.room = room
puts 'the room'
p room
puts 'the patient'
p sam
puts 'the patients room'
p sam.room
puts 'the patients rooms capacity'
p sam.room.capacity
puts 'the rooms first patient'
p room.patients.first
puts 'the rooms first patients name'
p room.patients.first.name


p sam.room.patients.last.name
