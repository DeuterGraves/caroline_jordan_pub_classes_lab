require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../food.rb")

class CustomerTest < MiniTest::Test

  def setup()

    @drink1 = Drink.new("Harvey Wallbanger", 3, 1, 5)
    @drink2 = Drink.new("Orchard Pigs Cider", 2, 1, 10)
    @drink3 = Drink.new("Tennants", 1, 1, 20)

    @food1 = Food.new("chips", 2.5, 0.5)
    @food2 = Food.new("burger", 7, 1)

    @customer1 = Customer.new("Richard", 50, 24)
  end

  def test_customer_has_name()
    assert_equal("Richard", @customer1.name)
  end

  def test_customer_has_wallet_value()
    assert_equal(50, @customer1.wallet)
  end

  def test_customer_has_age()
    assert_equal(24, @customer1.age)
  end

  def test_drunkenness_level()
    assert_equal(0, @customer1.drunkenness)
  end

  def test_reduce_money_in_wallet()
    @customer1.decrease_wallet(@drink1)
    assert_equal(47, @customer1.wallet)
  end

  def test_drunkenness_level_increases()
    @customer1.drinks(@drink1)
    assert_equal(1, @customer1.drunkenness)
  end

  def test_drunkenness_level_decreases()
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.eats(@food2)
    assert_equal(2, @customer1.drunkenness)
  end


#class end
end
