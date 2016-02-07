require './error_class.rb'

class Currency
  attr_accessor :code, :amount, :hash
  def initialize(code, amount = nil)
    @code = code
    @amount = amount
    @hash = {"!" => :GBP, "$" => :USD, "^" => :CNY}
    if @code != nil && @amount == nil
      breaker = code.split("",2)
      @amount = breaker.join[1..-1].to_f
      symbol = breaker[0]
      @code = hash[symbol]
      Currency.new(@code, @amount)
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
      Currency.new(@amount + other.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other)
    if @code == other.code
      Currency.new(@amount - other.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def /(other)
    if @code = other.code
      Currency.new(@amount / other.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(number)
    if number.class == Fixnum || number.class == Float
      Currency.new(@amount * number, @code)
    else
      puts "You're trying to multiply something that isn't a Fixnum or Float."
    end
  end
end
