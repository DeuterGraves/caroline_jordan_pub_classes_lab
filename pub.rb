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

  def sells_item(drink, customer)
    increase_till(drink)
    #p customer.wallet
    customer.decrease_wallet(drink)
    #@wallet.decrease_wallet(drink)
  end

  def age_check(customer)
    age = customer.age
    age >= 18
  end
  #class end
end
