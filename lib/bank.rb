class Bank
  attr_reader :accounts
  def initialize(account = Account)
    @accounts = []
    @account = account
  end

  def new_account(customer)
    @accounts.push(@account.new(customer))
  end
end
