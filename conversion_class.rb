require './currency_class'

class Conversion
  attr_accessor :current_code, :amount, :rate, :desired_code

  def initialize(current_code, amount, rate, desired_code)
    @current_code = current_code
    @amount = amount
    @rate = rate
    @desired_code = current_code
    hash = {USD: 1.0, EUR: 0.74}
  end

  def convert(other)
    if hash.key?(@desired_code)
      rate_convert = hash[@desired_code]
      converted_amount = rate_convert * @amount
      Currency.new(@desired_code, converted_amount)
    elsif !hash.has_key?(@desire_code)
      converted_amount = @rate * @amount
      hash[@desired_code] = @rate
      Currency.new(@desired_code, converted_amount)
    end
  end
end
