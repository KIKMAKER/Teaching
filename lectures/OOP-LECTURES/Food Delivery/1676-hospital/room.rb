require_relative './patient.rb'

class Room

  class FullRoom < StandardError; end

  attr_reader :patients
  
  def initialize(attributes = {})
    @capacity = attributes[:capacity]
    @patients = attributes[:patients] || []
  end

  def add_to_room(patient)
    if full?
      raise FullRoom "Room is full"
    else
      patient.room = self
      @patients << patient
    end
  end

  def full?
    @capacity == @patients.count
  end
end

begin
  room = Room.new(capacity: 2)
  # p room
  leo = Patient.new({ name: "Leo", cured: false, blood_type: "A"})
  # p leo
  shawn = Patient.new({ name: "Shawn", cured: false, blood_type: "A"})
  # p shawn
  lexi = Patient.new({ name: "Lexi", cured: false, blood_type: "A"})
  # p lexi
  puts "Room full?"
  room.add_to_room(leo)
  p room.full?
  puts "Room full?"
  room.add_to_room(shawn)
  p room.full?
  puts "Room full?"
  room.add_to_room(lexi)
  p room.full?

rescue => FullRoom
  puts "Sorry can't add anymore patients to the room"
end


# p room
# # p "hi #{leo.name}"

# p room.patients.last.name
# p room
