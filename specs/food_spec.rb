require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")
require_relative("../food.rb")

class FoodTest < MiniTest::Test

def setup()

@food1 = Food.new("chips", 2.5, 0.5)
@food2 = Food.new("burger", 7, 1)

end

def test_food_has_name()
  assert_equal("chips", @food1.name)
  assert_equal("burger", @food2.name)
end

def test_food_has_price()
  assert_equal(2.5, @food1.price)
end

def test_food_has_sobering_effect()
  assert_equal(0.5, @food1.sobering)
end












#class end
end
