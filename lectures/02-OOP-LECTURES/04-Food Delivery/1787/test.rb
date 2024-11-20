require_relative 'patient'
require_relative 'room'

sarah = Patient.new(name: "Sarah", age: 40)
sarah
sarah.name
sarah.age
sarah.cured?
sarah.cure!
sarah.cured?

david = Patient.new(name: "David", age: 38, blood_type: "A+", cured: true)
# david = Patient.new(name: name, age: age, blood_type: blood_type)
david
david.name


john_doe = Patient.new
john_doe

room = Room.new(capacity: 2)

puts "Is the room full?"
puts "#{room.full? ? 'yes' : 'no'}"

puts "adding sarah"
room.add(sarah)

# p sarah.room #= the instance of room sarah was added to

puts "Is the room full?"
puts "#{room.full? ? 'yes' : 'no'}"

puts "adding david"
room.add(david)

puts "Is the room full?"
puts "#{room.full? ? 'yes' : 'no'}"

puts "adding John Doe"
room.add(john_doe)

puts "Is the room full?"
puts "#{room.full? ? 'yes' : 'no'}"

puts "the room"
p room
puts "the patients in the room"
p room.patients

puts "the first patient in the room"
p room.patients[0]

puts "the room of the first patient in the room"
p room.patients.first.room
p room.patients.first.name
