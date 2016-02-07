
require './error_class'
require './currency_class'
require './conversion_class'
require './unknown_currency_error'
require 'byebug'
# byebug
money = Currency.new("$4000.00")
rates = {:USD => 1.00, :EUR => 0.89, :JPY => 120.00}
bank = CurrencyConverter.new(rates)
new_money = bank.convert(money, :EUR)
puts new_money.amount
puts new_money.code
