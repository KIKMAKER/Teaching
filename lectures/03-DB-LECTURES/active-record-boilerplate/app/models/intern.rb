class Intern < ActiveRecord::Base
belongs_to :doctor
end

# doc_house = Doctor.new(first_name: "Gregory", last_name: "House")

# ali = Intern.new(first_name: "Alison", last_name: "Smith")

# doc_house.intern = ali

# doc_house.intern => ali
