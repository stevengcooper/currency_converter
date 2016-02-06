require './currency_class'

class Conversion
  attr_accessor :current_code :amount :desired_code :rate

  def initialize(current_code, amount, desired_code, rate)
    @current_code = current_code
    @amount = amount
    @desired_code = desired_code
    @rate = rate
    hash = {USD: 1.0, EUR: 0.74}
  end

  def convert(other)
    if hash.include?(other.current_code)
      rate = hash[other.current_code]
      return rate * other.amount
    elsif 
