class Customer

  attr_accessor :drunkenness
  attr_reader :name, :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = 0

  end

  def decrease_wallet(drink)
  #price of drink
    price = drink.price
    # p price
    # p wallet
  #wallet - price of drink
    return @wallet -= price
  end

  def drinks(drink)
    drink_value = drink.abv
    # p drink_value
    #increase drunkenness by drink_value
    return @drunkenness += drink_value
  end
  #class end
end
