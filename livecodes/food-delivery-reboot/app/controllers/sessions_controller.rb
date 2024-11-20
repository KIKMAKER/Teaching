require_relative '../views/sessions_view.rb'
class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = SessionsView.new
  end

  def login
    # ask for username (VIEW)
    username = @view.ask_for("username")
    # ask for password (VIEW)
    password = @view.ask_for("password")
    # find the employee with the username
    employee = @employee_repository.find_by_username(username)
    # if the employee exists && the password matches
    # (there will only be an employee if the username matches one in the repo)
    if employee && employee.password == password
      # successful login message
      @view.successful_login
      return employee
    else
      # ask them to try again
      @view.unsuccessful_login
      # run the login process again
      login
    end

  end
end
