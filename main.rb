require './error_class.rb'
require './currency_class.rb'
require './conversion_class.rb'

rates = {:USD => 1.0, :EUR => 0.74, :JPY => 120.0}
hash = {"!" => :GBP, "$" => :USD, "^" => :CNY}
# currency_converter.convert(Currency.new(1, :USD), :USD)

a = Currency.new("$4.00")
b = Currency.new("$56.00")
a1 = CurrencyConverter.new (rates)
b1 = CurrencyConverter.new (rates)

# a.convert(a, :EUR)
# puts a.amount
# puts a.code
# currency_converter.convert(Currency.new(1, :USD), :USD)
puts a1.code
puts a1.amount
