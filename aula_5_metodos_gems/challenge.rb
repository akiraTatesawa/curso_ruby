# frozen_string_literal: true

require 'cpf_cnpj'

# Crie um programa que possua um método que resolva a potência dado um número base e seu expoente.
# Estes dois valores devem ser informados pelo usuário.

# @param [Integer] base
# @param [Integer] power
# @return [Integer]
def pow(base, power)
  base**power
end

puts pow(2, 90)

# Siga a documentação da gem cpf_cnpj para criar um programa
# que recebe como entrada um número de cpf e em um método verifique se este número é válido.

# @param [String] cpf
# @return [Boolean]
def validate_cpf_cnpj(cpf)
  CPF.valid?(cpf)
end

fake_cpf = CPF.generate

puts "The CPF '#{fake_cpf}' is #{validate_cpf_cnpj(fake_cpf) ? 'valid' : 'invalid'}"
