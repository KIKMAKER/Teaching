class Employee
  attr_accessor :id
  attr_reader :username, :password
  def initialize(attributes = {})
    @id = attributes[:id]
    @username = attributes[:username]
    @password = attributes[:password]
    @role = attributes[:role]
  end

  def manager?
    @role == "manager"
  end
end

# shawn = Employee.new(name: "Shawn", password: "secret", role: "manager")

# p shawn