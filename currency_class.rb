require './error_class'
require './conversion_class'
require 'byebug'

class Currency
  attr_reader :code, :amount
  def initialize(code, amount = nil)
    @code = code
    @amount = amount
    symbols = {"!" => :GBP, "$" => :USD, "^" => :CNY}
    if code != nil && amount == nil
      breaker = code.split("",2)
      @amount = breaker.join[1..-1].to_f
      symbol = breaker[0]
      @code = symbols[symbol]
      return Currency.new(@code, @amount)
    end
  end

  def ==(other)
    @code == other.code && @amount == other.amount
  end

  def +(other)
    if @code == other.code
      return Currency.new(@amount + other.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other)
    if @code == other.code
      return Currency.new(@amount - other.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(number)
    if number.class == Fixnum || number.class == Float
      return Currency.new(@amount * number, @code)
    else
      puts "You're trying to multiply something that isn't a Fixnum or Float."
    end
  end
end
