class RoomRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @rooms = []
    @next_id = 1
  end

  def all
    @rooms
  end

  def find(id)
    @rooms[id]
  end

  def create(room)
    room.id = @next_id
    @rooms << room
    #save_csv
    @next_id += 1
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:capacity] = row[:capacity].to_i
      room = Room.new(row)
      @rooms << room
    end

  end
end
