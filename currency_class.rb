require './error_class.rb'

class Currency
  attr_accessor :amount, :code, :hash
  def initialize(code, amount = nil)
    @code = code
    @amount = amount
    hash = {"!" => :GBP, "$" => :USD, "^" => :CNY}
    if @code != nil && @amount == nil
      breaker = code.split("",2)
      @amount = breaker.join[1..-1]
      symbol = breaker[0]
      @code = hash[symbol]
      puts "#{@code} #{@amount}"
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
      Currency.new(@code, new_amount)
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
wallet = Currency.new("$5000.00")
