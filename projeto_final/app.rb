# frozen_string_literal: true

require 'net/http'
require 'json'
require 'uri'

# Registration App
module Registration
  # Represents a customer
  class Customer
    # @param [String] cpf
    # @param [String] name
    # @param [String] birthday
    def initialize(cpf, name, birthday)
      @cpf = cpf
      @name = name
      @birthday = birthday
    end

    # Create a customer hash with its data
    # @return [Hash]
    def customer_to_hash
      {
        'cpf': @cpf, 'name': @name, 'birthday': @birthday
      }
    end
  end

  # Send Customer Service
  class SendCustomer
    # @param [Customer] customer
    def initialize(customer)
      @customer = customer
    end

    def post_customer
      uri = URI('https://igma-back.onrender.com/customers')

      Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
        request = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
        request.body = @customer.customer_to_hash.to_json

        response = http.request(request) # Net::HTTPResponse object

        puts "response #{response.body}"

        save_response(response)
      end
    end

    private

    def save_response(response)
      File.open('customer_reponse.json', 'w') { |line| line.puts(response.body) }
    end
  end
end

def main
  puts 'Digite os dados do cliente'
  print 'nome: '
  name = gets.chomp
  print 'cpf: '
  cpf = gets.chomp
  print 'aniversario: '
  birthday = gets.chomp

  customer = Registration::Customer.new(cpf, name, birthday)

  Registration::SendCustomer.new(customer).post_customer
end

main
