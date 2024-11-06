require 'csv'
require_relative 'patient'
require_relative 'room_repository'

class PatientRepository
  def initialize(csv_file, room_repository)
    @csv_file = csv_file
    @patients = []
    @next_id = 1
    @room_repository = room_repository
    # method to load the csv content into the patients array
    load_csv if File.exist?(csv_file)
  end

  def all
    @patients
  end

  def create(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol ) do |row|
      # convert the attributes to the correct data type
      row[:id] = row[:id].to_i
      # p row[:id]
      row[:cured] = row[:cured] == "true" ? true : false
      *******
      # use the foreign key to get the instance of room
      room_id = row[:room_id].to_i #convert to integer
      room = @room_repository.find(room_id) # find the rookm in repo
      row[:room] = room # assign the room to this patient
      # USE THIS TO LINK DIFFERENT MODELS
      # room = @room_repository.find(row[:room_id].to_i)
      patient = Patient.new(row)
      patient.room = room
      # p Patient.new(row)
      @patients << patient
    end
    # if @patients.any?
    #   @next_id = @patients.last.id + 1
    # else
    #   @next_id = 1
    # end
    @next_id = @patients.any? ? @patients.last.id + 1 : 1
  end

end

csv = File.join(__dir__, 'patients.csv')
room_repo = RoomRepository.new
new_room = Room.new({ capacity: 2 })
room_repo.create(new_room)

repo = PatientRepository.new(csv, room_repo)

# p repo



# p room_repo.find(1)
# p repo.all

# ali = Patient.new(name: "Ali", blood_type: "O-")

# repo.create(ali)

p repo.all
init
