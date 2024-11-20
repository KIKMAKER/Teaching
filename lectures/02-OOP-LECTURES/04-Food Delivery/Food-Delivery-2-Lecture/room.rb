require_relative './patient'

class Room
  attr_reader :patients

  class FullRoom < StandardError; end

  def initialize(attributes = {})
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def add(patient)
    if full?
      fail FullRoom, "The room is full"
      # fail StandardError, "The room is full"
    else
      patient.room = self
      @patients << patient
    end
  end

  def full?
    @capacity == @patients.length

  end
  begin
    puts "creating room"
    room = Room.new(capacity: 2)
    puts "creating patient kiki"
    kiki = Patient.new(name: 'kiki')
    puts "adding kiki to room (room.add(patient))"
    room.add(kiki)
    puts "-----------------"
    puts "room instance"
    p room
    puts "kiki instance"
    p kiki
    puts "checking which room kiki is in (kiki.room)"
    p kiki.room
    puts "Is the room full"
    p room.full?

    puts "creating patient lis"
    lisbeth = Patient.new(name: 'lisbeth')

    puts "adding lis to room (room.add(patient))"
    room.add(lisbeth)
    puts "Is the room full"
    p room.full?

    puts "creating patient liam"
    liam = Patient.new(name: 'liam')

    puts "adding liam to room (room.add(patient))"
    room.add(liam)
    puts "Is the room full"
    p room.full?
  rescue FullRoom
    puts "The room is full, can't add any more patients"
  end
end
