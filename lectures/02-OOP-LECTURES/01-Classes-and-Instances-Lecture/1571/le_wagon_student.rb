class LeWagonStudent
  attr_reader :country # able to read the value of this instance variable
  # attri_writer :first_name, :age # (re)write the value of this instance variable
  attr_accessor :first_name, :age # both read and write the values


  def initialize(first_name, age, country)
    @first_name = first_name
    @age = age
    @country = country
    @complete = false
  end

  def age
    @age
  end

  def has_graduated
    if graduate
      puts "This student has graduated"
    end
  end

  def graduated?
    return @complete
  end

  def rename(new_name)
    @first_name = new_name
  end

  def first_name=(new_name)
    @first_name = new_name
  end

  private

  def graduate
    @complete = true
  end

end

# instantiate an instance of the class
chris = LeWagonStudent.new("Chris", 42, "South Africa")
p chris
chris_2 = LeWagonStudent.new("Christopher", 19, "Liberia")

p chris
# call instance methods on the instance of the class
p chris.first_name
p chris.age
p chris.first_name

chris.has_graduated
# pass arguments when needed
chris.rename("Christoper")


p chris_2.graduated?


### Built in classes
name = "Kiki"

p name
name = String.new("Kiki")


p name.class
