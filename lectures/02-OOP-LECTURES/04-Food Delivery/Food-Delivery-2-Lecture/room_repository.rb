require 'csv'
require_relative './room.rb'
csv_file = './rooms.csv'
class RoomRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @rooms = []
    @next_id = 1
    load_csv
  end

  def find
    
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |csv_row|
      row = csv_row.to
      row[:id]    = row[:id].to_i          # Convert column to Integer
      #row[:name]  = row[:name]            # Keep as string (only need to state attributes if data type needs to change)
      row[:cured] = row[:cured] == "true"  # Convert column to boolean
      @rooms << Room.new(row)         # The whole row is a hash containing all the attributes of a single room
    end

    @rooms.empty? ? 1 : @rooms.last.id + 1
    # if @rooms.empty?
    #   @next_id = 1
    # else
    #   @next_id = @rooms.last.id + 1
    # end
  end


end
