require "product"

describe "Product" do
  before :each do
    @turnips = Product.new("Turnips", 2)
  end

  it "successfully instantiates the product class" do
    expect(@turnips).to be_kind_of(Product)
  end

  it "should return the name of the product" do
    expect(@turnips.name).to eq "Turnips"
  end

  it "should return the cost of the product" do
    expect(@turnips.cost).to eq 2
  end
end
