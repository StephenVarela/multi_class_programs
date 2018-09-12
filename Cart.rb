require './Product.rb'

class Cart

  def initialize
    @shopping_cart=[]
  end

  def add_item(name, price)
    @shopping_cart << Product.new(name,price)
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
my_cart.add_item('Guitar1', 200)
my_cart.add_item('Guitar2', 200)
my_cart.add_item('Guitar3', 200)
my_cart.add_item('Guitar4', 200)

p before_tax = my_cart.cost_before_tax
p after_tax = my_cart.cost_after_tax
