
require './error_class.rb'
require './currency_class.rb'
require './conversion_class.rb'

money = Currency.new(:USA, 100.00)
rates = {:USD => 1.00, :EUR => 0.89, :JPY => 120.00}
bank = CurrencyConverter.new(rates)
new_money = bank.convert(money, :EUR)
puts new_money.amount
