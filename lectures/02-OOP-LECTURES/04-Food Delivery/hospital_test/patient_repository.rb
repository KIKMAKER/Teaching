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

  def add(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
  end



  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == "true"
      patient = Patient.new(row)
      room = @room_repository.find(row[:room_id].to_i)
      patient.room = room
      @patients << patient
    end
    @next_id = @patients.last.id + 1 unless @patients.empty?

  end

end
room_repository = RoomRepository.new('./rooms.csv')
repo = PatientRepository.new('./patients.csv', room_repository)


mishka = Patient.new(name: "Mishka")

repo.add(mishka)
# p repo
p mishka.room
