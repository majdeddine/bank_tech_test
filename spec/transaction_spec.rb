describe Transaction do
  # let(:Time){double("Time", now: '2018-01-02 18:23:44 +0000')}
  let(:transaction){Transaction.new('credit',10,100,Time)}

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
  #  it "have a date" do
  #   expect(transaction.date).to eq('2018-01-02 18:23:44 +0000')
  # end
end
