require "checkout"

describe Checkout do
  let(:checkout) { Checkout.new }
  let(:product_1) { double(:product, name: "Turnip", cost: 5) }
  let(:product_2) { double(:product, name: "Beans", cost: 3) }

  describe "#ring_up" do
    it { is_expected.to respond_to(:ring_up) }

    it { is_expected.to respond_to(:ring_up).with(1).argument }
  end

  describe "#shop_cost" do
    it { is_expected.to respond_to :shop_cost }
    it "should return the total shop_cost" do
      checkout.ring_up(product_1)
      checkout.ring_up(product_2)
      expect(checkout.shop_cost).to eq 8
    end
  end
end
