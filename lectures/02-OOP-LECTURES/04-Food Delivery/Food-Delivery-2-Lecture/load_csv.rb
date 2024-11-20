require 'csv'
require_relative './patient.rb'


patients = []
CSV.foreach("./patients.csv", {headers: :first_row, header_converters: :symbol}) do |row|
  row[:id]    = row[:id].to_i          # Convert column to Integer
  #row[:name]  = row[:name]            # Keep as string (only need to state attributes if data type needs to change)
  row[:cured] = row[:cured] == "true"  # Convert column to boolean
  patients << Patient.new(row)         # The whole row is a hash containing all the attributes of a single patient
end
p patients
