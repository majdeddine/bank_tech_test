class Account
  attr_reader :balance, :owner, :password, :transactions
  def initialize(customer, password)
    @owner = customer
    @password = password.to_s
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

end
