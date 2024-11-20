require_relative 'patient'
class Room
  attr_reader :patients
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def add(patient)
    # check if the room is full
    if full?
      # if it is, print an error
      puts "Room is full #{patient.name} not added"
      # raise StandardError, "Room is full!"
      # raise
    else
      # add the instance of patient to the array
      @patients << patient
      # assign this room to be the patients room
      patient.room = self
    end
  end

  def full?
    @patients.size == @capacity
  end

end


# new_room = Room.new({ capacity: 2 })

# p new_room

# max = Patient.new(name: "Max", blood_type: "B-")
# sam = Patient.new(name: "Sam")
# john_doe = Patient.new(name: "John")

# # puts "Adding Patients to the room"

# new_room.add(max)
# new_room.add(john_doe)
# new_room.add(sam)

# # p new_room

# new_room.patients.each_with_index do |patient, index|
#   puts "#{index + 1}. #{patient.name}"
# end



# puts "John's room"
# p john_doe.room
