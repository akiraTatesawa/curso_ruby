# frozen_string_literal: true

# Classe que representa um produto no mercado
class Product
  attr_accessor :name, :price

  # @param [String] name
  # @param [Float] price
  def initialize(name, price)
    @name = name
    @price = price
  end
end
