require_relative 'patient'
class Room
  attr_reader :capacity
  attr_accessor :id
  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity]
    @patients = attributes[:patients] || []
  end

  def add(patient)
    if full?
      puts "room is already full #{patient.name} not added"
    else
      patient.room = self
      @patients << patient
    end
  end

  def full?
    @patients.size == @capacity
  end


end

sandy = Patient.new(name:"Sandy", age:35)
john = Patient.new(name:"John", age:43, blood_type:"O-", cured: true)
peter = Patient.new()

room_one = Room.new(capacity: 2)
room_one.add(sandy)
room_one.add(peter)
room_one.add(john)


p room_one
p "----------------------"
p sandy.room
puts "what is the capacity of the room sandy is in?"

p sandy.room.capacity


puts "is the room sandy is in full?"

p sandy.room.full?
