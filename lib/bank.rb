class Bank
  attr_reader :accounts
  def initialize(account = Account)
    @accounts = []
    @account = account
  end

  def new_account(customer)
    account = create_account(customer)
    @accounts.push(account)
  end

  def deposit(amount, customer)
    account = find_account(customer)
    account.deposit(amount)
  end

  def withdraw(amount, customer)
    account = find_account(customer)
    account.withdraw(amount)
  end

  private

  def create_account(customer)
    @account.new(customer)
  end

  def find_account(customer)
    @accounts.select{|c| c.owner == customer }[0]
  end

end
