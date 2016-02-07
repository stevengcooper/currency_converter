
require './error_class'
require './currency_class'
require './conversion_class'
require './unknown_currency_error'
require 'byebug'

rates = {:USD => 1.00, :EUR => 0.89, :JPY => 120.00}
euro = Currency.new(:EUR, 200.00)
yen = Currency.new(:JPY, 100.00)
money = Currency.new("$4000.00")
euro_bank = CurrencyConverter.new(rates)
japanese_bank = CurrencyConverter.new(rates)
bank = CurrencyConverter.new(rates)
new_money = bank.convert(money, :EUR)
new_yen = japanese_bank.convert(yen, :EUR)
new_euro = euro_bank.convert(euro, :JPY)
puts new_yen.amount
puts new_yen.code
puts new_euro.code
puts new_euro.amount
