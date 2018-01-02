class Bank
  attr_reader :accounts
  def initialize(account = Account)
    @accounts = []
    @account = account
  end

  def new_account(customer,password)
    account = create_account(customer,password)
    @accounts.push(account)
  end

  def deposit(amount, customer, password)
    account = find_account(customer)
    account.deposit(amount)
  end

  def withdraw(amount, customer,password)
    account = find_account(customer)
    account.withdraw(amount)
  end

  private

  def create_account(customer, password)
    @account.new(customer, password)
  end

  def find_account(customer)
    @accounts.select{|c| c.owner == customer }[0]
  end

end
