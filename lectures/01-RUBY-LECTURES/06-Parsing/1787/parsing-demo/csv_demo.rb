require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

beatles = []

# p "These artists play these instruments in the Beatles:"

CSV.foreach(filepath, headers: :first_row ) do |row|
  # ["first column", "second column", "third column"]
  # p row
  # p "#{row[0]} #{row[1]} plays #{row[2]} in the Beatles"
  # p "#{row["First Name"]} #{row["Last name"]} plays #{row["Instrument"]} in the Beatles"
  # p row
  beatles << ["#{row['First Name']}", "#{row['Last Name']}", "#{row['Instrument']}"]
end

p beatles

# p beatle_names

# def greet(name)
#   puts "Hello #{name}"
# end


# beatle_names.each do |beatle|
#   greet(beatle)
# end
filepath_2 = "data/new_beatles.csv"

CSV.open(filepath_2, "wb") do |csv|
  csv << ["First Name", "Second Name"]
  beatles.each do |beatle|
    csv << [beatle[0], beatle[1]]
  end
end
