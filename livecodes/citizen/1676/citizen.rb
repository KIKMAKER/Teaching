class Citizen
  attr_reader :first_name

  def initialize(first_name , second_name ,age)
    @first_name = first_name
    @second_name = second_name
    @age = age
    @alive = true
  end

  def can_vote?
    # if @age >= 18
    #   true
    # end
    @age >= 18
  end

  def full_name
    @first_name + " " + @second_name
  end

  def age
    @age
  end

  def alive?
    @alive
  end

end

citizen = Citizen.new("Kiki", "kennedy", 35)
citizen.age
citizen.alive?
