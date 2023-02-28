# frozen_string_literal: true

require_relative 'product'

require_relative 'market'

# Classe onde o código principal é executado
class App
  def main
    product = Product.new('Leite', 7.99)
    market = Market.new(product)

    market.buy
  end
end

App.new.main
