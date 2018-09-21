require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Harvey Wallbanger", 1, 1, 5)
    @drink2 = Drink.new("Orchard Pigs Cider", 2, 1, 10)
  end

  def test_drink_name()
    assert_equal("Harvey Wallbanger", @drink1.name)
  end

  def test_drink_price()
    assert_equal(1, @drink1.price)
  end

  def test_check_abv()
    assert_equal(1, @drink1.abv)
  end

  def test_drink_inventory()
    assert_equal(5, @drink1.stock)
  end

  def test_drink_removed_from_inventory()
    @drink1.decrease_drinks()
    assert_equal(4, @drink1.stock)
  end

def test_drink_stock_value()
  sub_total = @drink2.drink_stock_value()
  assert_equal(20, sub_total)
end

#class end
end
