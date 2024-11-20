require_relative 'room'
class RoomRepository
  def initialize
    @rooms = []
    @next_id = 1
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

end
