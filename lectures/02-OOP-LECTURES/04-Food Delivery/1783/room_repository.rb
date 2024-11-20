require 'csv'
require_relative 'room'
class RoomRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @rooms = []
    @next_id = 1
    load_csv if File.exist?(csv_file)
  end

  def all
    @rooms
  end

  def create(room)
    room.id = @next_id
    @rooms << room
    @next_id += 1
  end

  def find(id)
    @rooms.find do |room|
      room.id == id
    end
  end

  private

  def load_csv
    # fill the rooms array with instances of room
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      # update the data types
      row[:id] = row[:id].to_i
      # create a Room.new and << in to the array
      room = Room.new(row)
      @rooms << room
    end
    @next_id = @rooms.empty? ? 1 : @rooms.last.id + 1
    # if @rooms.empty?
    #   @next_id = 1
    # else
    #   @next_id = @rooms.last.id + 1
    # end
  end
end

csv_file = File.join(__dir__, './rooms.csv')
new_repo = RoomRepository.new(csv_file)

# puts "rooms:"

puts "new room being created"
new_room = Room.new(name: "Thulani", age: 70, cured: true)
new_repo.create(new_room)

p new_repo.all
