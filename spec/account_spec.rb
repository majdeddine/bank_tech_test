describe Account do
  let(:account){Account.new()}

  it "have a balance of 0" do
    expect(account.balance).to eq(0)
  end
end
