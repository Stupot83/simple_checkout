require "checkout"

describe "Checkout" do
  before :each do
    @checkout = Checkout.new
    @beans = Product.new("Beans", 2)
    @bread = Product.new("Bread", 3)
    @butter = Product.new("Butter", 3)
  end

  it "successfully instantiates the checkout class" do
    expect(@checkout).to be_kind_of(Checkout)
  end

  it "can ring_up products at the checkout and return the total" do
    @checkout.ring_up(@beans)
    @checkout.ring_up(@bread)
    @checkout.ring_up(@butter)
    expect(@checkout.shop_cost).to eq 8
  end
end
