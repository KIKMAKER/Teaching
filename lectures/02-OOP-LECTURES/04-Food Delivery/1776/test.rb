require_relative 'patient.rb'
require_relative 'room.rb'
require_relative 'patient_repository.rb'

# kiki = Patient.new(name: "Kiki", blood_type: "O-", cured: true)

# # p kiki.name
# # p kiki.cured?


# jamie = Patient.new(name: "Jamie", blood_type: "A-", address: "52 Church Street")

# # p jamie.cured?
# # puts "curing jamie"
# # jamie.cure!
# # p jamie.cured?

john_doe = Patient.new
# # p john_doe
# # p john_doe.cured?

# room_one = Room.new(capacity: 2)

# # p room_one
# puts "adding Kiki"
# room_one.add(kiki)

# # p room_one

# puts "adding Jamie"
# room_one.add(jamie)

# # p room_one

# puts "adding John Doe"
# room_one.add(john_doe)
# puts "Room_one:"
# p room_one

# # want .room to return an instance of room
# # need a method (.room) that I can call on an instance of patient
# puts "Kikis room:"
# p kiki.room

# xhanti = Patient.new(name:"X")
# xhantis_room = Room.new(capacity: 1)
# xhantis_room.add(xhanti)
# puts "xhantis_room"
# p xhantis_room
# puts "Xhanti's room"
# p xhanti.room

repo = PatientRepository.new('./patients.csv')
repo.create(john_doe)
p john_doe.id
p repo
