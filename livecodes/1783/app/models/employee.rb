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

  def rider?
    @role == "rider"
  end

end

# david = Employee.new(username: "David", password: "secretpassword", role: "manager")
# p david.manager?
# p david.rider?
