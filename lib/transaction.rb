
class Transaction
  attr_reader :type,:date, :amount, :balance
  def initialize(type,amount,balance,date=Time)
    @type = type
    @amount = amount
    @balance = balance
    @date = date.now
  end

end
