require './currency_class'
require './error_class'

 class CurrencyConverter
   attr_accessor :rates
  def initialize(rates)
    @rates = rates
  end

   def convert(other, desired_code)
     if @rates.include?(other.code) && @rates.include?(desired_code)
       rate_convert = @rates[desired_code]
       converted_amount = rate_convert * other.amount
       converted_currency = Currency.new(desired_code, converted_amount)
     else
       raise DifferentCurrencyCodeError
     end
  end
end
