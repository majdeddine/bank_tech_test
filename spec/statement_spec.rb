describe Statement do
  let(:statement) { Statement.new }
  let(:transaction) { double('transaction', date: '01/01/2010', type: 'debit', amount: 100, balance: 100) }

  it 'print statment receive one argument' do
    expect(statement).to respond_to(:print).with(1).argument
  end

  describe 'print' do
    it 'print a list of transaction in a special format' do
      transactions = [transaction]
      statement.print(transactions)
      expect(statement.statment_log.last).to eq(' 01/01/2010 || debit  ||  100.00  || 100.00 ')
    end
  end
end
