# frozen_string_literal: true

# Classe que representa um mercado
class Market
  # @param [Product] product
  def initialize(product)
    @product = product
  end

  # Método para comprar um produto
  # @return [nil]
  def buy
    puts "Você comprou o produto '#{@product.name}' no valor de 'R$ #{@product.price}'"
  end
end
