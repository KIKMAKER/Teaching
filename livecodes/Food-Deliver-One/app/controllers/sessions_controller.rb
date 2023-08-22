require_relative '../views/sessions_view.rb'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @sessions_view = SessionsView.new
  end

  def login
    # Ask the user for their username
    username = @sessions_view.ask_for_something('username')
    # Ask the user for their password
    password = @sessions_view.ask_for_something('password')
    # if username exists and password matches
    employee = @employee_repository.find(username)
    if employee && employee.password == password
      # display logged in message
      @sessions_view.display("You are logged in")
    else
      # display error
      @sessions_view.display("Incorrect credentials")
      # "loop" back to login
      login
    end
    employee
  end


end
