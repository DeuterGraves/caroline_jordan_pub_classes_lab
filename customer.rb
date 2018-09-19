class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def buys_item(drink)
  #price of drink
    price = drink.price
    # p price
    # p wallet
  #wallet - price of drink
    return @wallet -= price
  end


  #class end
end
