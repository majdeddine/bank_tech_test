class Account
  attr_reader :balance, :owner, :password, :transactions
  def initialize(customer, password, transaction = Transaction)
    @owner = customer
    @password = password.to_s
    @balance = 0
    @transaction = transaction
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    add_transaction('debit', amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
    add_transaction('credit', amount, @balance)
  end

  private

  def add_transaction(type, amount, balance)
    transaction = create_transaction(type, amount, balance)
    @transactions.push(transaction)
  end

  def create_transaction(type, amount, balance)
    @transaction.new(type, amount, balance)
  end

end
