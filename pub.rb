class Pub

attr_reader :name, :till, :drinks

def initialize(name, till, drinks)
  @name = name
  @till = till
  @drinks = drinks
end

  def increase_till(drink)
    price = drink.price
    @till += price
  end

  #class end
end
