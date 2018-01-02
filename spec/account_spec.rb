describe Account do
  let(:customer){double("customer", name: "jj")}
  let(:account){Account.new(customer)}


  it "receive customer instance when instantiated" do
    expect(account.owner.name).to eq('jj')
  end
  it "have a balance of 0" do
    expect(account.balance).to eq(0)
  end
end
