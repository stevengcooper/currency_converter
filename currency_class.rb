# require './ DifferentCurrencyCodecurrency_error'
# Currency < DifferentCurrencyCodeError

class Currency
  attr_accessor :amount, :code

  def initialize(code, amount)
    @code = code
    @amount = amount
  end

  # def currency_error(other)
  #   if @code != other.code
  #     error_fixed = false
  #     begin
  #       raise "DifferentCurrencyCodeError" unless  error_fixed
  #     rescue
  #       error_fixed = true
  #       retry
  #     end
  #   end
  # end
  def currency_error(value)
    raise DifferentCurrencyCodeError, 'Currencies do not match.' if (@code == other.code) == false
  end

  def +(other)
    if @code == other.code
      @amount + other.amount
    else
      other.currency_error
    end
  end

  def -(other)
    if @code == other.code
      @amount - other.amount
    else
      other.currency_error
    end
  end

  def *(other)
    if @code == other.code
      @amount * other.amount
    else
      other.currency_error
      puts "WARNING!!!!!!!!"
    end
  end
end

a = Currency.new(:NAD, 500)
c = Currency.new(:USD, 600.08)
d = Currency.new(:USD, 10000)
puts c.amount - d.amount
puts c.amount * d.amount
puts c.amount + d.amount
