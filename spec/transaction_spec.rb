describe Transaction do

  it "have 3 attributes when instantiated"do
    expect(Transaction).to respond_to(:new).with(3).arguments
  end
end
