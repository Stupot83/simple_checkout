require "product"

describe Product do
  let(:product) { Product.new("Turnip", 5) }

  context "#defaults" do
    it "should have a name" do
      expect(product.name).to eq("Turnip")
    end

    it "should have a price" do
      expect(product.cost).to eq 5
    end
  end
end
