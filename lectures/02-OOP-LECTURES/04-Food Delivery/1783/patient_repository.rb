require 'csv'
require_relative 'patient'
require_relative 'room_repository'
class PatientRepository
  def initialize(csv_file, room_repository)
    @csv_file = csv_file
    @room_repository = room_repository
    @patients = []
    @next_id = 1
    load_csv
  end

  def all
    @patients
  end

  def create(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
  end


  private

  def load_csv
    # fill the patients array with instances of patient
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      # update the data types
      row[:id] = row[:id].to_i
      row[:age] = row[:age].to_i
      row[:cured] = (row[:cured] == "true")
      row[:room_id] = row[:room_id].to_i
      found_room = @room_repository.find(row[:room_id])
      # create a Patient.new and << in to the array
      patient = Patient.new(row)
      patient.room = found_room
      # patient.room = #an instance of room
      @patients << patient
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
    # if @patients.empty?
    #   @next_id = 1
    # else
    #   @next_id = @patients.last.id + 1
    # end
  end
end

puts "Creating the room repo"
csv_file = File.join(__dir__, './rooms.csv')
room_repo = RoomRepository.new(csv_file)

puts "Creating a room in the repo"
new_room = Room.new(name: "Thulani", age: 70, cured: true)
room_repo.create(new_room)

puts "Creating the patient repo"
csv_file = File.join(__dir__, './patients.csv')
new_repo = PatientRepository.new(csv_file, room_repo)

# puts "patients:"

# puts "new patient being created"
# new_patient = Patient.new(name: "Thulani", age: 70, cured: true)
# p new_patient
# new_repo.create(new_patient)
# puts "added the patient"
# p new_patient
# puts "all patients"
p new_repo.all

puts "Sandy:"
p new_repo.all.first
puts "Sandy's room"
p new_repo.all.first.room
