# frozen_string_literal: true

require 'net/http'
require 'json'
require 'uri'
require 'colorize'

require_relative 'customer'
require_relative 'customer_services'

# Registration App
class Application
  def init
    system 'clear'

    puts 'Operações:'.colorize(color: :blue, mode: :bold)
    puts '(1) Criar um cliente'
    puts '(2) Buscar um cliente'
    puts '(0) Sair'

    print 'Digite a operação: '
    # @type [Integer]
    operation = gets.chomp.to_i

    handle_operation(operation)
  end

  private

  def create_customer
    puts "\nCriação de cliente".colorize(color: :blue, mode: :bold)
    print 'Nome: '
    name = gets.chomp
    print 'CPF: '
    cpf = gets.chomp
    print 'Data de Nascimento: '
    birthday = gets.chomp

    customer = Customer.new(cpf, name, birthday)

    CustomerServices::CreateCustomer.new(customer).post_customer
  end

  def retrieve_customer
    puts "\nBusca de Cliente".colorize(color: :blue, mode: :bold)
    print 'CPF: '
    cpf = gets.chomp

    CustomerServices::GetCustomer.new(cpf).retrieve_customer
  end

  # @param [Integer] operation
  def handle_operation(operation)
    case operation
    when 1
      create_customer
    when 2
      retrieve_customer
    else
      puts 'Aplicação encerrada...'
    end
  end
end

app = Application.new
app.init
