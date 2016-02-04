class Currency
  attr_accessor :amount, :code

  def initialize(code, amount)
    @code = code
    @amount = amount
  end

  # def inside(code, amount)
  #   @amount
  #   @code
  # end

  def equal(other)
    @code == other.code && @amount == other.amount
    puts "DifferentCurrencyCodeError" if @code != other_code.code
  end

  def +(other)
    @amount + other.amount if @code == other.code
  end

  # def -(other_amount, other_code)
  #   @amount - other_amount.inside if other_code.inside.check
  #
  # def *(other_amount, other_code)
  #   @amount * other_amount.inside if other_code.inside.check
  # end
end

#
dollar = Currency.new(:USD, 500)
c = Currency.new(:USD, 600.08)
puts c.amount
puts c.code
puts c + dollar
