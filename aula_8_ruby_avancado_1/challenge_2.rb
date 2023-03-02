# frozen_string_literal: true

# Módulo que representa uma pessoa
module Person
  # Classe que representa uma pessoa jurídica (PJ)
  class Juridic
    attr_reader :name, :cnpj

    # @param [String] name <description>
    # @param [String] cnpj <description>
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end

    def add
      puts 'Pessoa Jurídica Adicionada'
      puts "nome: #{name}"
      puts "cnpj: #{cnpj}"
    end
  end

  # Classe que representa uma pessoa física (PF)
  class Physical
    attr_reader :name, :cpf

    # @param [String] name <description>
    # @param [String] cpf <description>
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts 'Pessoa Jurídica Adicionada'
      puts "nome: #{name}"
      puts "cpf: #{cpf}"
    end
  end
end

Person::Juridic.new('M. C. Investimentos', '4241.123/0001').add
Person::Physical.new('José Almeida', '425.123.123-123').add
