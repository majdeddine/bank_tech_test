describe Bank do
  let(:customer){double("customer", name: "jj")}
  let(:bank){Bank.new()}

  it "have a list of accounts" do
    expect(bank.accounts).to be_an_instance_of(Array)
  end
  describe "new account" do

    it"receive customer as argument" do
      expect(bank).to respond_to(:new_account).with(1).argument
    end

    it"create a new account and add it to the accounts list"do
      bank.new_account(customer)
      expect(bank.accounts.last.owner).to eq(customer)
    end

  end
end
