# rubocop:disable all

class Coin
  attr_accessor :symbol, :USD, :EUR

  def initialize(symbol, usd, eur)
    @symbol = symbol
    @USD = usd
    @EUR = eur
  end
end
