class Butler
  def initialize(castle, name)
    @castle = castle # We want @castle to store an instance of Castle.
    @name = name
  end

  def clean_castle
    p "#{@castle.name} is cleaned by #{@name}!"
  end
end
