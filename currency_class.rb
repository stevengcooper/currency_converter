class Currency
  attr_accessor :amount, :currency_code

  def initialize(amount, currency_code)
    @currency_code = currency_code.to_sym
    @amount = amount.to_f
  end

  def inside(other_amount, currency_code)
    @amount
    @currency_code
  end

  def equal(other_code, other_amount)
    if @currency_code == other_code.inside.to_sym && @amount == other_amount.inside
  end

  def code_check(other_code)
    @currency_code == other_code.inside
  end

  def +(other_amount, other_code)
    @amount + other_amount.inside if other_code.inside.code_check
  end

  def -(other_amount, other_code)
    @amount - other_amount.inside if other_code.inside.code_check

  def *(other_amount, other_code)
    @amount * other_amount.inside if other_code.inside.code_check
  end
end
end
# 
# dollar = Currency.new(:USD, 500)
end
