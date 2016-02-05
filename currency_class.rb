require './error_class.rb'
# Currency < DifferentCurrencyCodeError

class Currency
  attr_accessor :amount, :code

  def initialize(code, amount)
    @code = code
    @amount = amount
  end

  def ==(other)
    if @code == other.code && @amount == other.code
      true
    elsif @code != other.code && @amount != other.amount
      false
    end
  end

  def currency_error(other)
    if @code != other.code
      raise DifferentCurrencyCodeError.new("Currency codes are not the same.", "code")
    else
      true
    end
  end

  def +(other)
    if @code == other.code
      @amount + other.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other)
    if @code == other.code
      @amount - other.amount
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(other)
    if @code == other.code
      @amount * other.amount
    else
      raise DifferentCurrencyCodeError
    end
  end
end

a = Currency.new(:NAD, 500)
c = Currency.new(:USD, 600.08)
d = Currency.new(:USD, 10000)
puts d - a
puts c * 45
puts c + d
