require './error_class.rb'
require './main.rb'
require './conversion_class.rb'
class Currency
  attr_accessor :code, :amount, :hash, :rates
  def initialize(code, amount = nil)
    @code = code
    @amount = amount
    @hash = {"!" => :GBP, "$" => :USD, "^" => :CNY}
    @rates = rates
    if code != nil && amount == nil
      breaker = code.split("",2)
      @amount = breaker.join[1..-1].to_f
      symbol = breaker[0]
      @code = hash[symbol]
      new_currency = Currency.new(@code, @amount)
    else
      puts "String was not present."
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
      new_currency = Currency.new(@amount + other.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def -(other)
    if @code == other.code
      new_currency = Currency.new(@amount - other.amount, @code)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def /(other, desired_code)
    if @code != other.code
      desired_rate = @rates[desired_code]
      current_rate = @rates[other.code]
      new_currency = Currency.new(current_rate / desired_rate)
    else
      raise DifferentCurrencyCodeError
    end
  end

  def *(number)
    if number.class == Fixnum || number.class == Float
      new_currency = Currency.new(@amount * number, @code)
    else
      puts "You're trying to multiply something that isn't a Fixnum or Float."
    end
  end
end
