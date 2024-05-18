require 'csv'
require_relative 'patient'
require_relative './room_repository.rb'

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

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == "true"
      # row[:cured] == "true"
      # "false" == "true"
      # -> false
      # "true" == "true"
      # -> true
      patient = Patient.new(row)
      patient.room = @room_repository.find(row[:room_id].to_i)
      patient.id = @next_id + 1 unless @patients.empty?
      @patients << patient
      @next_id += 1
    end
  end
end

room_repo = RoomRepository.new('./rooms.csv')
repo = PatientRepository.new('./patients.csv', room_repo)
# @patient_repository.add(patient)

kate = Patient.new(name: "Kate")
repo.add(kate)

p repo



