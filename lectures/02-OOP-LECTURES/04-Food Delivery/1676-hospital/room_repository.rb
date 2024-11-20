require 'csv'
require_relative 'room'
class RoomRepository

  def initialize(csv_file)
    @csv_file = csv_file
    @rooms = []
    @next_id = 1
    load_csv

  end

  def find(index)
    @rooms[index]
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:capacity] = row[:capacity].to_i
      room = Room.new(row)
      room.id = @next_id + 1 unless @rooms.empty?
      @rooms << room
      @next_id += 1
    end
  end

end

room_repo = RoomRepository.new('./rooms.csv')
p room_repo
