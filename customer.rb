class Customer

  attr_reader :name, :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def decrease_wallet(drink)
  #price of drink
    price = drink.price
    # p price
    # p wallet
  #wallet - price of drink
    return @wallet -= price
  end


  #class end
end
