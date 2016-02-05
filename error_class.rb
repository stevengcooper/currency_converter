class DifferentCurrencyCodeError < StandardError
  def initialize(msg="Currency codes are not the same. Convert your currency to continue.")
   super
 end

end

raise DifferentCurrencyCodeError
