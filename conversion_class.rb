require './currency_class.rb'
require './error_class.rb'
require 'byebug'

class CurrencyConverter
  attr_accessor :rates, :amount
  def initialize(rates)
    @rates = rates
  end

  def convert(other, desired_code)
    if @rates.include?(desired_code)
      rate_convert = @rates[desired_code]
      Currency.new(desired_code, rate_convert * other.amount)
    else
      raise DifferentCurrencyCodeError
    end
  end
end
