require './currency_class.rb'
require './unknown_currency_error.rb'

class CurrencyConverter
  attr_accessor :rates, :amount
  def initialize(rates)
    @rates = rates
  end

  def convert(other, desired_code)
    if @rates[other.code] == nil || @rates[desired_code] == nil
      raise UnknownCurrencyCodeError
    elsif @rates[other.code] == 1
      rate_convert = @rates[desired_code]
      converted_amount = rate_convert * other.amount
      converted_currency = Currency.new(desired_code, converted_amount)
    elsif @rates[other.code] != 1 && @rate.inlude?(desired_code)
      desired_rate = @rates[desired_code]
      current_rate = @rates[other.code]
      converted_amount = current_rate / desired_rate
      converted_currency = Currency.new(desired_code, converted_amount)
    end
  end
end
