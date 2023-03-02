# frozen_string_literal: true

# Customer Services of the App
module CustomerServices
  # Handle the Response Object
  class ResponseHandler
    # Save the HTTP response
    # @param [Net::HTTPResponse] response
    # @param [String] file_name
    def self.save_response(response, file_name)
      File.open("./responses/#{file_name}.json", 'w') { |line| line.puts(response.body) }
    end

    # Format the HTTP response
    # @param [Net::HTTPResponse] response
    def self.print_response(response)
      # @type [Hash]
      json_body = if response.code == '200' || response.code == '201'
                    JSON.parse(response.body)['customer']
                  else
                    JSON.parse(response.body)
                  end

      puts "\n#{'-' * 40}"
      json_body.each { |key, value| puts "#{key.colorize(mode: :bold)} => #{value}" }
      puts '-' * 40
    end
  end

  # Create Customer Service
  class CreateCustomer
    # @param [Customer] customer
    def initialize(customer)
      @customer = customer
    end

    def post_customer
      uri = URI('https://igma-back.onrender.com/customers')

      Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
        request = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
        request.body = @customer.customer_to_hash.to_json

        # @type [Net::HTTPResponse]
        response = http.request(request)

        ResponseHandler.print_response(response)
        ResponseHandler.save_response(response, 'create_customer_response')
      end
    end
  end

  # Get Customer by CPF Service
  class GetCustomer
    # @param [String] customer_cpf
    def initialize(customer_cpf)
      @customer_cpf = customer_cpf
    end

    def retrieve_customer
      uri = URI("https://igma-back.onrender.com/customers/#{@customer_cpf}")

      Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
        # @type [Net::HTTPResponse]
        request = Net::HTTP::Get.new uri

        # @type [Net::HTTPResponse]
        response = http.request(request)

        ResponseHandler.print_response(response)
        ResponseHandler.save_response(response, 'get_customer_response')
      end
    end
  end
end
