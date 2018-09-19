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
    customer.decrease_wallet(drink)
  end

  def age_check?(customer)
    age = customer.age
    age >= 18
  end

  def drink_sale(drink, customer)
    if age_check?(customer) == true
      sells_item(drink, customer)
    else
      return "computer says no"
    end
  end

  def drunk_check?(customer)
    drunk = customer.drunkenness
    drunk < 5
    #if drunk is less than 5 - customer is not drunk - true - safe to sell drink
    # if this evaluates to false - then don't sell them a drink
  end

  def drunk_drink_sale(drink, customer)
    #if drunk check = true
    if drunk_check?(customer) == true
      sells_item(drink, customer)
    else
      return "you're too drunk, mate"
      #sell drink to customer
      # if drunk check = false
      #don't drink to customer
    end
  end

  def all_checks_sale(drink, customer)
    #first check age cos that's a deal breaker
    # then check test_drunkenness_level
    # then sell if both == true
    # if of age && not drunk - sell
    # if of age && drunk - don't sell
    # if under age && not drunk - don't sell
    # if underage && drunk - don't sell
    if age_check?(customer) && drunk_check?(customer)
      sells_item(drink, customer)
    else
      return "computer says ABSOLUTELY not"
    end
  end


  #class end
end
