require "json"

class Customers
  attr_reader :json_customers

  def initialize(json_customers)
    @json_customers = JSON.parse(File.read(json_customers))
  end


end

# people = Customers.new("./MOCK_DATA.json")
#
# p people
