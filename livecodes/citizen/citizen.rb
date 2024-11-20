class Citizen
  # GET attributes
  attr_reader :first_name
  # SET attributes
  attr_writer :age
  # BOTH get / set attributes
  attr_accessor :last_name

  def initialize(first_name, last_name, age)
    @age = age
    @first_name = first_name
    @last_name = last_name
    # @can_vote = @age >= 18
  end

  def full_name
    "#{@first_name.capitalize} #{@last_name.capitalize}"
  end

  def can_vote?
    @age >= 18
  end

  def dead?
    @dead
  end

  # def can_vote?
  #   @can_vote
  # end

  def can_play?
    @age < 18
  end

  # # EXPLICIT READER
  # def first_name
  #   @first_name
  # end


end
