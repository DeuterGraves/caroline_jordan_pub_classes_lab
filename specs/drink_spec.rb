require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")

class DrinkTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Harvey Wallbanger", 1, 1)
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

#class end
end
