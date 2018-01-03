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


  private

  def reset_statment_log
    @statment_log = [statment_header]
  end

  def statment_header
    "   date   ||  credit  || debit  || Amount  || Balance "
  end

  def to_float(number)
    sprintf('%.2f', number)
  end

  def print_credit(type, amount)
    type == 'credit' ? "#{amount}" : ''
  end

  def print_debit(type, amount)
    type == 'debit' ? "#{amount}" : ''
  end
  
  def print_transaction(transaction)
    date = transaction.date
    type = transaction.type
    amount = to_float(transaction.amount)
    balance = to_float(transaction.balance)
    @statment_log << " #{date} || #{print_credit(type, amount)}  || #{print_debit(type, amount)} || #{balance} "
  end
end
