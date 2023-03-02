# frozen_string_literal: true

# Classe que representa um carro
class Car
  # Imprime a velocidade do carro
  # @param [String] phrase
  # @return [nil]
  def get_km(phrase)
    puts find_km(phrase)
  end

  private

  # Encontra o padrão na frase
  # @param [String] phrase
  # @return [MatchData]
  def find_km(phrase)
    km_regex = %r{[0-9]{2}km/h}

    phrase.match(km_regex)
  end
end

Car.new.get_km('Um fusca de cor amarela viaja a 80km/h')
