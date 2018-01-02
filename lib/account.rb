class Account
  attr_reader :balance, :owner, :password
  def initialize(customer, password)
    @owner = customer
    @password = password.to_s
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
