class Citizen
  # attr_reader :age
  # attr_writer :first_name
  attr_accessor :first_name, :age


  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @alive = true
  end

  def can_vote?
    # if @age >= 18
    #   true
    # else
    #   false
    # end
    @age >= 18
  end

  # def first_name
  #   @first_name
  # end

  # def first_name=(new_name)
  #   @first_name = new_name
  # end

  def got_married(new_surname)
    @last_name = new_surname
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

end

# CREATE
grant = Citizen.new("Grant", "Beven", 42)
meg = Citizen.new("Meg", "Street", 27)

p grant
p grant.full_name

p meg.first_name

meg.got_married("Smith")
# READ the first name (ATTRIBUTE)
p meg.full_name

# WRITE the first (UPDATE)
meg.first_name = "Megan"

p meg.first_name



# Implement a Citizen class with the following API:

#initialize(first_name, last_name, age)
#can_vote? (boolean)
#full_name (String)
p grant.age

grant.age = 22

p grant.age
