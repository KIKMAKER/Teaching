require 'csv'
require_relative '../models/customer.rb'

class CustomerRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @customers = []
    @next_id = 1
    load_csv if File.exist?(csv_file)
  end

  def all
    @customers
  end

  def create(customer)
    customer.id = @next_id
    @customers << customer
    @next_id += 1
    save_csv
  end

  def find(id)
    # go through customers array and FIND the first customer with the matching id
    @customers.find do |customer|
      customer.id == id
    end
  end

  private

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      # update the data types
      row[:id] = row[:id].to_i
      @customers << Customer.new(row)
    end
    @next_id = (@customers.empty? ? 1 : @customers.last.id + 1)
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["id","name","address"]
      # create a row FOR EACH customer in the customers array
      @customers.each do |customer|
        csv << [customer.id, customer.name, customer.address]
      end
    end
  end

end
