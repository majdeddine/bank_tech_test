class Statement
  attr_reader :statment_log
  def initialize
    @statment_log = [statment_header]
  end

  def print(transactions)
    reset_statment_log
    transactions.reverse.each { |transaction| print_transaction(transaction) }
    puts @statment_log.join("\n")
  end

  def print_transaction(transaction)
    date = transaction.date
    type = transaction.type
    amount = to_float(transaction.amount)
    balance = to_float(transaction.balance)
    @statment_log << " #{date} || #{type}  ||  #{amount}  || #{balance} "
  end

  private

  def reset_statment_log
    @statment_log = [statment_header]
  end

  def statment_header
    "   Date   ||  Type  ||  Amount  || Balance "
  end

  def to_float(number)
    sprintf('%.2f', number)
  end
end
