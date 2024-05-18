require 'csv'
require_relative 'patient'
require_relative 'room'
require_relative 'room_repository'

class PatientRepository
  def initialize(csv_file, room_repository)
    @room_repository = room_repository
    @csv_file = csv_file
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
    #save_csv
    @next_id += 1
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:room_id] = row[:room_id].to_i
      row[:age] = row[:age].to_i
      row[:cured] = row[:cured] == "true"

      patient = Patient.new(row)
      patient.room = @room_repository.find(row[:room_id])
      @patients << patient
    end
    # if @patients.empty?
    #   @next_id = 1
    # else
    #   @next_id = @patients.last.id + 1
    # end

    @next_id = @patients.empty? ? 1 : @patients.last.id + 1

  end

end

room_repo = RoomRepository.new('./rooms.csv')
room = Room.new(id:1, capacity:2)
room_repo.create(room)
patient_repo = PatientRepository.new('./patients.csv', room_repo)

oscar = Patient.new(name:"Oscar", age:26, blood_type:"A+")
patient_repo.create(oscar)
puts "printing oscar"
p patient_repo.all.first.room
