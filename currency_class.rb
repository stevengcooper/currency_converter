class Currency
  attr_accessor :amount, :code

  def initialize(code, amount)
    @code = code
    @amount = amount
  end

  def error(other)
    puts "DifferentCurrencyCodeError" if @code != other.code
  end

  def +(other)
    @amount + other.amount if other.error
  end

  def -(other)
    @amount - other.amount if other.error
  end
  #
  # def *(other)
  #   @amount * other.amount if other_code.error
  # end
end

a = Currency.new(:USSR, 500)
c = Currency.new(:USD, 600.08)
puts c.amount
puts c.code
puts c.amount + a.amount
puts a.amount - c.amount
