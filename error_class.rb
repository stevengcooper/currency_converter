class DifferentCurrencyCodeError < StandardError
  def initialize(msg="Currency codes are not the same.", code = "code")
    @code = code
   super(msg)
  end
end
