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
    if hash.key?(other.current_code)
      rate = hash[other.desired_code]
      converted_amount= rate * other.amount
      Currency.new(other.desired_code, converted_amount)
    elsif !hash.has_key?(other.current_code)
      converted_amount = other.rate * other.amount
      hash[other.desired_code] = converted_amount

      new_amount =
      Currency.new(other.desired_code, converted_amount)
    end
  end
end
wallet1 = Conversion.new(:USD, 3000.00, 0.74, :GBP)
puts wallet1
