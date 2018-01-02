class Account
  attr_reader :balance, :owner
  def initialize(customer)
    @owner = customer
    @balance = 0
  end
end
