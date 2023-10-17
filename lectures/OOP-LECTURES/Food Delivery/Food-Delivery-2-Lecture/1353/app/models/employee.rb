# id, username, password, role

class Employee
  attr_reader :username, :password
  attr_accessor :id
  
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

# employee = Employee.new(username: "Sinéad", password: "secret", role: "manager")
# p employee
