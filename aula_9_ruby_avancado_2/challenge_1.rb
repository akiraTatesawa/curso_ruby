# frozen_string_literal: true

def match_phone
  # @type [Regexp]
  phone_regex = /\([0-9]{2}\)\s[0-9]{1}\s[0-9]{4}-[0-9]{4}/

  phrase = 'Olá, tudo bem? Meu whats app é (99) 7 4321-1234'

  phrase.match(phone_regex)
end

puts match_phone
