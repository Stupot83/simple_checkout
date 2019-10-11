require_relative "product"

class Checkout
  def initialize
    @total_cost = []
  end

  def ring_up(product)
    @total_cost << product.cost
  end

  def shop_cost
    @total_cost.sum
  end
end
