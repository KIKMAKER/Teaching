require 'csv'
require_relative './room.rb'
class RoomRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @rooms = []
  end

  def find(index)
    @rooms[index]
  end


  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:capacity] = row[:capacity].to_i
      room = Room.new(row)
      @rooms << room
    end
    @next_id = @rooms.last.id + 1 unless @rooms.empty?

  end
end
