require './Product.rb'

class Cart

  def initialize
    @shopping_cart=[]
  end

  def add_item(item)
    @shopping_cart << item
  end

  def delete_item(item)
    @shopping_cart.delete(item)
  end

  def cost_before_tax
    cost = 0
    @shopping_cart.each do |item|
      cost += item.base_price
    end
    return cost
  end

  def cost_after_tax
    cost = 0
    @shopping_cart.each do |item|
      cost += item.total_price
    end
    return cost
  end

end

my_cart = Cart.new
my_product = Product.new('Guitar', 200)
my_cart.add_item(my_product)
p my_cart.cost_after_tax
p my_cart.cost_before_tax
