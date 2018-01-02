describe Transaction do
  let(:transaction){Transaction.new('credit',10,100)}

  it "have 3 attributes when instantiated"do
    expect(Transaction).to respond_to(:new).with(4).arguments
  end

  it "have a type" do
    expect(transaction.type).to eq('credit')
  end

  it "have an amount" do
    expect(transaction.amount).to eq(10)
  end

  it "have a balance" do
    expect(transaction.balance).to eq(100)
  end

end
