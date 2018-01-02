describe Bank do

  it "have a list of accounts" do
    bank = Bank.new()
    expect(bank.accounts).to be_an_instance_of(Array)
  end
end
