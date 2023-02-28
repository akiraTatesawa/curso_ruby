# frozen_string_literal: true

#   Utilizando uma collection do tipo Array,
#   escreva um programa que receba 3 números e no final
#   exiba o resultado de cada um deles elevado a segunda potência.

# @param [Array<Integer>] numbers
#
# @return [Array<Integer>]
def to_power_two(numbers)
  power_2_array = numbers.map do |number|
    number**2
  end

  puts power_2_array

  power_2_array
end

# Crie uma collection do tipo Hash e permita que o usuário crie três elementos informando a chave e o valor.
# No final do programa para cada um desses elementos imprima a frase
#  “Uma das chaves é *** e o seu valor é *** ”

# @return [nil]
def build_hash
  hash = {}

  3.times do |index|
    print "Digite a #{index + 1}ª chave: "
    key = gets.chomp

    print "Digite o #{index + 1}º valor: "
    value = gets.chomp

    hash[key] = value
  end

  hash.each do |key, value|
    puts "Uma das chaves é '#{key}' e o seu valor é '#{value}'"
  end
end

# Dado o seguinte hash:
#
# Numbers = {a: 10, b: 30 2, c: 20, d: 25, e: 15}
#
# Crie uma instrução que seleciona o maior valor deste hash e no final
# imprima a chave e valor do elemento resultante.

def print_greater_pair
  number_hash = {
    a: 10, b: 30, c: 20, d: 25, e: 15
  }

  max_value = number_hash.values.max
  max_key = number_hash.key(max_value)

  max_hash = { "#{max_key}": max_value }

  puts max_hash
end

to_power_two([2, 3, 4])
print_greater_pair
build_hash
