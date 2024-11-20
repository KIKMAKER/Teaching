require 'csv'
require_relative '../models/employee.rb'
class EmployeeRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @employees = []
    load_csv
  end

  def all_riders
    # go through each employee in the array
    @employees.select do |employee|
      # select the employees where role == rider
      employee.rider?
    end
    # returns an array of employees for which .rider? returns true
  end

  def find(id)
    @employees.find do |employee|
      employee.id == id
    end
    # returns the instance of employee for which employee.id == id returns true
  end

  def find_by_username(username)
    @employees.find do |employee|
      employee.username == username
    end
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      # convert attributes to the correct data type
      row[:id] = row[:id].to_i
      # create an instance of employee
      employee = Employee.new(row)
      # and store in the array
      @employees << employee
    end
  end
end
