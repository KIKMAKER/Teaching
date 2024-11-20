require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"


# CSV.foreach('data/beatles.csv')

CSV.foreach(filepath) do |row|
  beatles_array = row
  first_name = beatles_array[0]
  last_name = beatles_array[1]
  instrument = beatles_array[2]

  # puts "#{first_name} plays #{instrument} in the beatles"
end

CSV.foreach(filepath, headers: :first_row, header_converters: :symbol) do |row|
  p row
  # beatles_array = row
  # first_name = beatles_array[0]
  # last_name = beatles_array[1]
  # instrument = beatles_array[2]

  # puts "#{first_name} plays #{instrument} in the beatles"

  beatles_hash = row
  # first_name = beatles_hash["First Name"]
  # last_name = beatles_hash["Last Name"]
  # instrument = beatles_hash["Instrument"]

  # puts "#{first_name} plays #{instrument} in the beatles"
end

filepath = "data/beatles_1783.csv"

CSV.open(filepath, "wb") do |csv|
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["Ndi", "Lennon", "Guitar"]
  csv << ["Mmanare", "McCartney", "Bass Guitar"]
  csv << ["Darian", "Riverr", "Triangle"]
end
