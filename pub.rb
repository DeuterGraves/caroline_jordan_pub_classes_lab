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

  def age_check?(customer)
    age = customer.age
    age >= 18
  end

  def drink_sale(drink, customer)
    #if age check == true
    if age_check?(customer) == true
    # increase_till
    sells_item(drink, customer)
    #decrease_wallet
  else
    return "computer says no"
  end

# #write the function for the drunk check
# def drunk_check(customer)
#   #similar to age check - drinks max 5 - if 6+ = false
#   #if 0-5 - true
# end

  end


  #class end
end
