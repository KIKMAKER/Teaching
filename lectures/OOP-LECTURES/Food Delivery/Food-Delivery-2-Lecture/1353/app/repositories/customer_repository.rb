require "csv"
require_relative "../models/customer"

class CustomerRepository
  def initialize(customer_csv_file)
    @customers = []
    @csv_file = customer_csv_file
    @next_id = 1
    load_csv if File.exist?(@csv_file)
  end

  def create(customer)
    customer.id = @next_id
    @customers << customer
    @next_id += 1
    save_csv
  end

  def all
    @customers
  end

  def find(customer_id)
    @customers.find { |customer| customer.id == customer_id }
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      customer_new = Customer.new(row)
      @customers << customer_new
    end
    @next_id = @customers.empty? ? 1 : @customers.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id", "name", "address"]
      @customers.each do |customer|
        csv << [customer.id, customer.name, customer.address]
      end
    end
  end

end
