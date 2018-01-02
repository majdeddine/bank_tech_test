
describe Customer do

  it "should have a name"do
    customer = Customer.new('jj')
    expect(customer.name).to eq('jj')
  end
end
