require 'csv'
require_relative 'patient.rb'

class PatientRepository
  # job of the repo to assign the id
  def initialize(csv_file)
    @csv_file = csv_file
    @next_id = 1
    @patients = []
    load_csv
  end

  def create(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      # create a new instance of patient
      # each row is a hash-like object with: id:"1" name:"Kiki" cured:"true"
      # convert the data types as necessary (csvs only hold strings)
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == "true"
      # to assign a room to each patient
      row[:room_id] = row[:room_id].to_i
      # need to get the instance of room from the room repository
      row[:room] = RoomRepository.find(row[:room_id])
      # p row
      @patients << Patient.new(row)
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
    puts "Next id set to #{@next_id}"
  end


end
