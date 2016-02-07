### Currency Converter Code
**The program was built based on guidelines detailed in [this link](https://github.com/tiyd-rails-2016-01/currency_converter)*

**The code allows for:
1. Creates an instance of currency.
  *Stores currency instance's code and amount.
2. Inputing strings with currency symbols, "$4000".
  *Outputs the instance with a currency code and amount
3. Addition and subtraction of Currency instances with the same currency code.
  *The attempt with different codes will produce a DifferentCurrencyCodeError.
4. Converts between different currency codes with the input of current currency rates.
  *Produces a  UnknownCurrencyCodeError if a code is not stored in database.
  
