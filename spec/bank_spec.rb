describe Bank do
  let(:customer) { double('customer', name: 'jj') }
  let(:account) { double('account', owner: '', password: '') }
  let(:Account){ double('Account', new: account) }
  let(:statement) { double('statement') }
  let(:bank) { Bank.new(Account, statement) }

  before(:each) do
    allow(statement).to receive(:print)
    # allow(account).to receive(:new)
    bank.new_account(customer, '0000')
  end

  it 'have a list of accounts' do
    expect(bank.accounts).to be_an_instance_of(Array)
  end
  describe 'new account' do

    it 'receive customer and password as arguments' do
      expect(bank).to respond_to(:new_account).with(2).argument
    end

    it 'create a new account and add it to the accounts list' do
      Account.should_receive(:new).once
      bank.new_account(customer, '0000')
    end
  end

  describe 'deposit' do
    it 'receive amount, customer and password as arguments' do
      expect(bank).to respond_to(:deposit).with(3).argument
    end

    it 'throw error if the customer provide a wrong password' do
      expect { bank.deposit(10, customer, '0001') }.to raise_error('Wrong name or password')
    end

  end

  describe 'withdraw' do
    it 'receive amount, customer and password as arguments' do
      expect(bank).to respond_to(:withdraw).with(3).argument
    end

    it 'throw error if the customer provide a wrong password' do
      expect { bank.withdraw(10, customer, '0001') }.to raise_error('Wrong name or password')
    end
  end

  describe 'account_statement' do
    it 'receive customer and password as argument' do
      expect(bank).to respond_to(:account_statement).with(2).argument
    end

    it 'throw error if the customer provide a wrong password' do
      expect { bank.account_statement(customer, '0001') }.to raise_error('Wrong name or password')
    end

    it 'call print once' do
      statement.should_receive(:print).once
      bank.account_statement(customer, '0000')
    end
  end

end
