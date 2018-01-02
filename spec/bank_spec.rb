describe Bank do
  let(:customer){double("customer", name: "jj")}
  let(:bank){Bank.new()}

  it "have a list of accounts" do
    expect(bank.accounts).to be_an_instance_of(Array)
  end
  describe "new account" do

    it"receive customer and password as arguments" do
      expect(bank).to respond_to(:new_account).with(2).argument
    end

    it"create a new account and add it to the accounts list"do
      bank.new_account(customer,"0000")
      expect(bank.accounts.last.owner).to eq(customer)
    end
  end

  describe "deposit" do
    it "receive amount, customer and password as arguments" do
      expect(bank).to respond_to(:deposit).with(3).argument
    end

    it "throw error if the customer provide a wrong password" do
      expect{bank.deposit(10,'jj',"0001")}.to raise_error("Wrong name or password")
    end
  end

  describe "withdraw" do
    it "receive amount, customer and password as arguments" do
      expect(bank).to respond_to(:withdraw).with(3).argument
    end
  end
end
