describe Account do
  let(:customer){double("customer", name: "jj")}
  let(:account){Account.new(customer)}


  it "receive customer instance when instantiated" do
    expect(account.owner.name).to eq('jj')
  end
  it "have a balance of 0" do
    expect(account.balance).to eq(0)
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
end
