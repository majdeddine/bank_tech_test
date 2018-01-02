
class Transaction
  attr_reader :type,:date, :amount, :balance
  def initialize(type,amount,balance,date=Time.now)
    @type = type
    @amount = amount
    @balance = balance
    @date = date

  end

end
