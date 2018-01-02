describe Account do
  let(:customer){double("customer", name: "jj")}
  let(:account){Account.new(customer, '0000')}


  it "receive customer instance when instantiated" do
    expect(account.owner.name).to eq('jj')
  end

  it "receive a password when instantiated" do
    expect(account.password).to eq('0000')
  end

  it "have a balance of 0" do
    expect(account.balance).to eq(0)
  end

  it "have transactions" do
    expect(account.transactions).to eq([])
  end

  describe "deposit" do

    it "receive amount as argument" do
      expect(account).to respond_to(:deposit).with(1).argument
    end

    it "add an amout of money to the balance" do
      account.deposit(5)
      expect(account.balance).to eq(5)
    end
  end

  describe "withdraw" do
    it "receive amount as argument" do
      expect(account).to respond_to(:withdraw).with(1).argument
    end
    it "substract an amout of money from the balance" do
      account.deposit(5)
      account.withdraw(5)
      expect(account.balance).to eq(0)
    end
  end
end
