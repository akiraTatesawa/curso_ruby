# frozen_string_literal: true

# Classe que representa um esportista
class Esportista
  def competir
    puts 'Participando de uma competição'
  end
end

# Representa um jogador de futebol.
# Extensão de Esportista
class JogadorDeFutebol < Esportista
  def correr
    puts 'Correndo atrás da bola'
  end
end

# Representa um maratonista.
# Extensão de Esportista
class Maratonista < Esportista
  def correr
    puts 'Percorrendo o circuito'
  end
end

JogadorDeFutebol.new.competir
JogadorDeFutebol.new.correr
Maratonista.new.competir
Maratonista.new.correr
