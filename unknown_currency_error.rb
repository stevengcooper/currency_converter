class UnknownCurrencyCodeError < StandardError
  def initialize(msg="Currency code is not in the data base.", code = "code")
    @code = code
   super(msg)
  end
end
