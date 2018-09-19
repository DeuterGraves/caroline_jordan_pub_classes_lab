require_relative("./drink.rb")
require_relative("./customer.rb")
require_relative("./pub.rb")

@drink1 = Drink.new("Harvey Wallbanger", 1)

p "what's a drink"
p @drink1

p "what's my drink name?"
p @drink1.name
