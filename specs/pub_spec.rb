require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

def setup()
  @drink1 = Drink.new("Harvey Wallbanger", 3)
  @drink2 = Drink.new("Orchard Pigs Cider", 2)
  @drink3 = Drink.new("Tennants", 1)

  @drinks = [@drink1, @drink2, @drink3]

  @pub1 = Pub.new("Filthy McNasties", 0, @drinks)
end

def test_pub_has_name()
  assert_equal("Filthy McNasties", @pub1.name)
end

def test_pub_has_till()
  assert_equal(0, @pub1.till)
end

def test_pub_has_drinks()
  assert_equal(@drinks, @pub1.drinks)
end

def test_increase_till()
  @pub1.increase_till(@drink1)
  assert_equal(3, @pub1.till)
end

  #end class
end
