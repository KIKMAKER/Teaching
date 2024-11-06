require 'csv'
require_relative 'patient'
# NB only need to req the room repo in this file for the lecture
# in order to create an instance of room repo for testing purposes
require_relative 'room_repository'
class PatientRepository
  def initialize(csv, room_repository)
    @csv = csv
    @patients = []
    @room_repository = room_repository
    @next_id = 1
    load_csv
  end

  def all
    @patients
  end

  def create(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
  end


  private

  def load_csv
    CSV.foreach(@csv, headers: :first_row, header_converters: :symbol) do |row|
      # converts all the necessary data types
      # reassigns the value to the key
      row[:age] = row[:age].to_i
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == "true"
      # for each of the foreign keys
      meal_id = row[:meal_id].to_i
      row[:meal] = @meal_repository.find(meal_id)
      # repeat for customer and empployee
      
      Order.new(row)


      attributes = { meal: "<#Meal>" }
      order.meal
      # find the patients room in the room repo using the room_id
      room = @room_repository.find(row[:room_id].to_i)

      # use the hash-like object of the CSV::Row
      #<CSV::Row id:2 name:"david" age:38 cured:true room_id:"1">
      patient = Patient.new(row)
      # assign the room the patient
      patient.room = room #some instance of room with the id stored in room_id
      # p row
      # add the patient to the array
      @patients << patient
    end
    @next_id = @patients.any? ? @patients.last.id + 1 : 1
    # @next_id = @patients.empty? ? 1 : @patients.last.id + 1

  end

end


room = Room.new(capacity: 2)

room_2 = Room.new(capacity: 3)

room_repo = RoomRepository.new

room_repo.add(room)
room_repo.add(room_2)

# p room_repo.all


repo = PatientRepository.new('patients.csv', room_repo)



# sarah = repo.all.first
# p sarah.room


mmanare = Patient.new(name: "mmanare", age: 23, cured: true)

repo.create(mmanare)

p repo.all
