require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"


# PARSING
beatles_array = []
# CSV.foreach(filepath, headers: :first_row, header_converters: :symbol) do |row|
  # p row
  # each row is an array
  # access the elements (STRINGS) by their index

  # puts "Hello #{row[0]}, you play #{row[2]} well!"
  # puts "Hello #{row["First Name"]}, you play #{row["Instrument"]} well!"
  # beatles_array << row
  # puts "Hello #{row[:first_name]}, you play #{row[:instrument]} well!"
# end


#STORING

CSV.open(filepath, "wb") do |csv|
  csv << ["First Name","Last Name","Instrument"]
  csv << ["John", "Lennon", "Guitar"]
  csv << ["Michael", "Uche", "Harmonica"]
end
