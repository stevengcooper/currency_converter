require './error_class.rb'

class Currency
  attr_accessor :amount, :code, :hash
  def initialize(code, amount = nil)
    @code = code
    @amount = amount
    hash = {"!" => :GBP, "$" => :USD, "^" => :CNY}
    if @code != nil && @amount == nil
      breaker = code.split("",2)
      amount = breaker[1].to_f
      code = hash[breaker[0]]
    else
      "Something has gone terribly wrong."
    end
  end

  def ==(other)
    if @code == other.code && @amount == other.amount
      true
    elsif @code != other.code && @amount != other.amount
      false
    end
  end

  def +(other)
    if @code == other.code
      new_amount = @amount + other.amount
      new_wallet = Currency.new(@code, new_amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other)
    if @code == other.code
      new_amount = @amount - other.amount
      new_wallet = Currency.new(@code, new_amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def /(other)
    if @code = other.code
      new_amount = @amount / other.amount
      new_wallet = Currency.new(@code, new_amount)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(number)
    if number.class == Fixnum || number.class == Float
      new_amount = @amount * number
      new_wallet =
      Currency.new(@code, new_amount)
    end
  end
end
wallet = Currency.new("$4000")
wallet2 = Currency.new(:USD, 600)
puts wallet2.code
puts wallet2.amount
puts wallet.code
puts wallet.amount
