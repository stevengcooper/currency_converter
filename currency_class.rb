require './error_class.rb'
require 'byebug'

class Currency
  attr_accessor :amount, :code

  def initialize(code, amount)
    @code = code
    @amount = amount
  end

  def ==(other)
    if @code == other.code && @amount == other.amount
      true
    elsif @code != other.code && @amount != other.amount
      false
    end
  end

  # def currency_error(other)
  #   if @code != other.code
  #     raise DifferentCurrencyCodeError.new("Currency codes are not the same.", "code")
  #   else
  #     true
  #   end
  # end

  def +(other)
    if @code == other.code
      @amount = @amount + other.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other)
    if @code == other.code
      @amount = @amount - other.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def /(other)
    if @code = other.code
      @amount = @amount / other.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(number)
    if number.class == Fixnum || number.class == Float
      new_amount = @amount * number
      new_wallet = Currency.new(@code, new_amount)
    end
  end
end

a = Currency.new(:NAD, 500)
c = Currency.new(:USD, 600.08)
d = Currency.new(:USD, 10000)
e = c * 5
puts c + d
puts d - c
puts d / c
