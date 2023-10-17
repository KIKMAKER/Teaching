require_relative '../views/sessions_view.rb'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @sessions_view = SessionsView.new
  end

  def login
    # ask user for username
    username = @sessions_view.ask_for("username")
    # ask user for password
    password = @sessions_view.ask_for("password")
    employee = @employee_repository.find_by_username(username)
    # check (with employee repo) if username exists
    if employee && employee.password == password
      # and if password matches
      # then we display successful login message
      @sessions_view.welcome_message
    else
        # display error message
      @sessions_view.wrong_credentials
      login
    end
    employee
  end

end
