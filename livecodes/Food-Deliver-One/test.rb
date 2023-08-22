require_relative './app/models/employee.rb'
require_relative './app/repositories/employee_repository.rb'

repo = EmployeeRepository.new('./app/data/employees.csv')

p repo
