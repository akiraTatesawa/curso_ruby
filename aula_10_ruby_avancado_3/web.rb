# frozen_string_literal: true

require 'net/https'

# é feita uma requisição GET e o resultado é armazenado na variável abaixo
example = Net::HTTP.get('example.com', '/index.html')

# um arquivo example.html é criado e depois escrito
File.open('example.html', 'w') do |line|
  line.puts(example)
end

https = Net::HTTP.new('igma-back.onrender.com', 443)
# para fazer chamadas https
https.use_ssl = true

response = https.get('/customers')

# status code
puts response.code
# status message
puts response.message
# body (json)
puts response.body

# para fazer chamadas https

req = Net::HTTP::Post.new('/api/users')
# para fazer chamadas https
req.set_form_data({ name: 'Mario', job: 'Encanador' })

post_response = Net::HTTP.start('reqres.in', use_ssl: true) do |http|
  http.request(req)
end

puts post_response.code
puts post_response.body

File.open('post_api_example.json', 'w') { |line| line.puts(post_response.body) }
