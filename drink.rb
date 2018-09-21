class Drink

  attr_reader :name, :price, :abv
  attr_accessor :stock

  def initialize(name, price, abv, stock)
    @name = name
    @price = price
    @abv = abv
    @stock = stock
  end

  def decrease_drinks()
    return @stock -= 1
  end

  def drink_stock_value()
    return @stock * @price
  end

  #class end
end
