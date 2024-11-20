require_relative '../views/sessions_view'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = SessionsView.new
  end

  def login
    # get the employee username
    username = @view.ask_for("username")
    # get the employee password
    password = @view.ask_for("password")
    # get the instance of employee (using the username)
    employee = @employee_repository.find_by_username(username)
    # if the employee exists AND the password matches
    if employee && employee.password == password
    # then show a successful login method
      @view.successful_login
    # else ask to try again
    else
      @view.unsucessful_login
      login
    end
    return employee
  end
end
