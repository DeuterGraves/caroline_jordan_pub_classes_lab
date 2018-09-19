require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")
require_relative("../customer.rb")

class CustomerTest < MiniTest::Test

  def setup()
    @customer1 = Customer.new("Richard", 50)
  end

  def test_customer_has_name()
    assert_equal("Richard", @customer1.name)
  end

  def test_customer_has_wallet_value()
    assert_equal(50, @customer1.wallet)
  end

#class end
end
