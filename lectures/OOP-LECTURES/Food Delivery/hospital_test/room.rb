require_relative './patient.rb'
class Room
  attr_accessor :id

  class FullRoom < StandardError; end

  attr_reader :patients
  def initialize(attributes = {})
    @capacity = attributes[:capacity]
    @patients = attributes[:patients] || []
  end

  def add(patient)
    if full?
      fail FullRoom "The room is full"
    else
      patient.room = self
      @patients << patient
    end
  end

  def full?
    @capacity == @patients.length
  end

end
begin

  room = Room.new(capacity: 2)
  # p room
  # puts "---------"
  # puts "is the room full?"

  sarah = Patient.new(name: "Sarah")
  # p sarah

  room.add(sarah)
  # p room.full?

  # puts "---------"
  # puts "is the room full?"

  david = Patient.new(name: "David")
  # p david

  room.add(david)
  # p room.full?

  # puts "---------"
  # puts "is the room full?"

  mishka = Patient.new(name: "Mishka")
  # p mishka

  # room.add(mishka)
  # p room.full?

  # puts "---------"
  # puts "is the room full?"

  liz = Patient.new(name: "Liz")
  # p liz

  # room.add(liz)
  # p room.full?

  # puts "---------"
  # puts "is the room full?"
  # p room.patients.count
rescue => FullRoom
  puts "There is not enough space in the room"

end
