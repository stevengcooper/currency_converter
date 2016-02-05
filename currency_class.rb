class Currency
  attr_accessor :amount, :code

  def initialize(code, amount)
    @code = code
    @amount = amount
  end

  def error(other)
    if @code != other.code
      puts "DifferentCurrencyCodeError"
  end

  def +(other)
    @amount + other.amount if other.equal_to
  end

  def -(other)
    @amount - other.amount if other.code.equal_to

  def *(other)
    @amount * other.amount if other_code.check
  end
end

#
a = Currency.new(:USSR, 500)
c = Currency.new(:USD, 600.08)
puts c.amount
puts c.code
puts c.amount + a.amount
end
