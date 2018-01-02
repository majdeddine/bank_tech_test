class Bank
  attr_reader :accounts
  def initialize(account = Account, statement = Statement.new)
    @accounts = []
    @account = account
    @statement = statement
  end

  def new_account(customer,password)
    account = create_account(customer,password)
    @accounts.push(account)
  end

  def deposit(amount, customer, password)
    account = find_account(customer,password)
    if account
      account.deposit(amount)
    else
      match_error
    end
  end

  def withdraw(amount, customer,password)
    account = find_account(customer,password)
    if account
      account.withdraw(amount)
    else
      match_error
    end
  end

  def account_statment(customer,password)
    account = find_account(customer,password)
    if account
      @statement.print(account.transactions)
    else
      match_error
    end
  end
  private

  def create_account(customer, password)
    @account.new(customer, password)
  end

  def find_account(customer,password)
    @accounts.select{|c| c.owner == customer && c.password == password }[0]
  end

  def match_error
    raise("Wrong name or password")
  end
end
