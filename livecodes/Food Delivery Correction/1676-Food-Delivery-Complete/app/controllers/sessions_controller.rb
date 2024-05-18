require_relative '../views/sessions_view'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = SessionsView.new
  end

  def login
    # Ask the user for username
    username = @view.ask_for("username")
    # Ask the user for the password
    password = @view.ask_for("password")
    # chck the employee repo for an employee with the username
    employee = @employee_repository.find_by_username(username)

    # if there is an employee ----
    #  if their password matches
    if employee && employee.password == password
      # log them in
      @view.signed_in
      return employee
    else
      # display an error
      @view.wrong_credentials
      # make them try again
      login
    end
  end

end
