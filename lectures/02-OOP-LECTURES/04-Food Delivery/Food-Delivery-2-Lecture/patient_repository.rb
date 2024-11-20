require 'csv'
require_relative './patient.rb'

class PatientRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @patients = []
    @next_id = 1
    load_csv
  end

  def add(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
    # save_csv
  end

  def load_csv
    if File.exist?(@csv_file)
      CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      p row.to_hash
      # row[:id]    = row[:id].to_i          # Convert column to Integer
      # row[:cured] = row[:cured] == "true"  # Convert column to boolean
      # patients << Patient.new(row)
      end
    end
    @patients.empty? ? 1 : @patients.last.id + 1
    # if @patients.empty?
    #   @next_id = 1
    # else
    #   @next_id = @patients.last.id + 1
    # end
  end
 p @patients

end

repo = PatientRepository.new('./patients.csv')
# lis = Patient.new(name:"Lis")
# repo.add(lis)
p repo
