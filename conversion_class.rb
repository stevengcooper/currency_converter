require './currency_class'
require './error_class'


 class CurrencyConverter
   attr_reader :rates
  def initialize(rates)
    @rates = rates
  end

   def convert(other, desired_code)
    if @rates[other.code] && @rates[desired_code]
      converted_amount = (@rates[desired_code] / @rates[other.code]) * other.amount
      return Currency.new(desired_code, converted_amount.round(2))
     end
  end
end
