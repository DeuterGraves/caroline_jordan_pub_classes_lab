require("minitest/autorun")
require("minitest/rg")
require_relative("../drink.rb")
require_relative("../customer.rb")
require_relative("../pub.rb")

class PubTest < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Harvey Wallbanger", 3, 1)
    @drink2 = Drink.new("Orchard Pigs Cider", 2, 1)
    @drink3 = Drink.new("Tennants", 1, 1)

    @drinks = [@drink1, @drink2, @drink3]

    @customer1 = Customer.new("Richard", 50, 24)
    @customer2 = Customer.new("Susan", 50, 17)

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

  def test_sells_items()
    @pub1.sells_item(@drink1, @customer1)
    # test increase till
    assert_equal(3, @pub1.till)
    # test decrease wallet
    assert_equal(47, @customer1.wallet)
  end

  def test_check_age__of_age()
    assert_equal(true, @pub1.age_check?(@customer1))
  end

  def test_check_age__not_of_age()
    assert_equal(false, @pub1.age_check?(@customer2))
  end

  def test_age_check_drink_sale__of_age()
    @pub1.drink_sale(@drink1, @customer1)
    assert_equal(3, @pub1.till)
    assert_equal(47, @customer1.wallet)
  end

  def test_age_check_drink_sale__not_of_age()
    sale = @pub1.drink_sale(@drink1, @customer2)
    assert_equal("computer says no", sale)
  end

  def test_drunk_check__not_drunk()
    assert_equal(true, @pub1.drunk_check?(@customer1))
  end

  def test_drunk_check__drunk()
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    assert_equal(false, @pub1.drunk_check?(@customer1))
  end

  def test_drunk_check_sale__not_drunk_enough()
    @pub1.drunk_drink_sale(@drink1, @customer1)
    assert_equal(3, @pub1.till)
    assert_equal(47, @customer1.wallet)
  end

  def test_drunk_check_sale__too_drunk()
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    sale= @pub1.drunk_drink_sale(@drink1, @customer1)
    assert_equal("you're too drunk, mate", sale)
  end

  def test_check_age_then_check_drunk___pass_both()
    @pub1.all_checks_sale(@drink1, @customer1)
    assert_equal(3, @pub1.till)
    assert_equal(47, @customer1.wallet)
  end

  def test_check_age_then_check_drunk___fail_age()
    sale = @pub1.all_checks_sale(@drink1, @customer2)
    assert_equal("computer says ABSOLUTELY not", sale)
  end

  def test_check_age_then_check_drunk___fail_drunk()
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    @customer1.drinks(@drink1)
    sale = @pub1.all_checks_sale(@drink1, @customer1)
    assert_equal("computer says ABSOLUTELY not", sale)
  end
  #end class
end
