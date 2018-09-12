class Product

@@tax_rate = 0.13

  def initialize(name, base_price)
    @name = name
    @base_price = base_price
  end

  def base_price
    return @base_price
  end

  def name
    return @name
  end

  def total_price
    return base_price * (1+@@tax_rate)
  end

end
