require './currency_class'
require './error_class'


 class CurrencyConverter
   attr_accessor :rates
  def initialize(rates)
    @rates = rates
  end

   def convert(other, desired_code)
    if !(@rates.include?(other.code)) || !(@rates.include?(desired_code))
       raise UnknownCurrencyCodeError
    elsif @rates[other.code] == 1.0
       rate_convert = @rates[desired_code]
       converted_amount = rate_convert * other.amount
       converted_currency = Currency.new(desired_code, converted_amount)
    elsif @rates[other.code] < 1.0
        desired_rate = @rates[desired_code]
        current_rate = @rates[other.code]
        converted_amount = (current_rate * other.amount) * desired_rate
        converted_currency = Currency.new(desired_code, converted_amount)
    else @rates[desired_code] > 1.0
       desired_rate = @rates[desired_code]
       converted_amount = other.amount / desired_rate
       converted_currency = Currency.new(desired_code, converted_amount)
     end
  end
end
