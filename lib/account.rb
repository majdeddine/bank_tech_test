class Account
  attr_reader :balance, :owner
  def initialize(customer)
    @owner = customer
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
  
end
