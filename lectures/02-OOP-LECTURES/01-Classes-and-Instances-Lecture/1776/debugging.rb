require "pry-byebug"
# run 'gem install pry-byebug' in your terminal before running the file

students = {"Xhanti" => "MahoNga", "jP" => "Breugem", "bernie" => "ManikWa"}

# iterate over the hash and produce a list of neat full names

students.each do |first_name, last_name|
  puts "#{first_name.capitalize} #{last_name.capitalize}"
  binding.pry
end
