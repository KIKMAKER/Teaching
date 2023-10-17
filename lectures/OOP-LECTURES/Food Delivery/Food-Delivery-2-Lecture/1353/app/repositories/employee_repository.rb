require 'csv'
require_relative '../models/employee.rb'

class EmployeeRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @employees = []
    load_csv if File.exist?(@csv_file)
  end

  def find_by_username(username)
    @employees.find do |employee|
      employee.username == username
    end
  end

  def find(id)
    @employees.find do |employee|
      employee.id == id
    end
  end

  def all_riders
    @employees.reject { |employee| employee.manager? }
  end


  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      employee = Employee.new(row)
      @employees << employee
      # @employees.push(employee)
    end
  end
end
