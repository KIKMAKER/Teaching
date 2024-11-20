require_relative 'room'
class RoomRepository
  def initialize
    @rooms = []
    @next_id = 1
  end

  def all
    @rooms
  end

  def add(room)
    room.id = @next_id
    @rooms << room
    @next_id += 1
  end

  def find(id)
    @rooms.find do |room|
      # returns the room for which this is true
      room.id == id
    end
  end
end
