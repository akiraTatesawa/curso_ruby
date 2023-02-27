# frozen_string_literal: true

# Implementation of the each method over an array.
# Prints each item in the array.
#
# @param [Array<String>] names list of names
# @return [nil]
def each_array(names)
  names.each do |name|
    puts "#{name} é o meu nome!"
  end
end

# Implementation of each method over a hash.
# Prints the status of classes
#
# @param [Hash] class_status
# @return [nil]
def each_hash(class_status)
  class_status.each do |key, value|
    puts "#{key} => #{value}"
  end
end

each_array(%w[Arthur Haíla Pikachu])
each_hash({
            aula1: 'Published',
            aula2: 'Published',
            aula3: 'Published',
            aula4: 'Coming soon...',
            aula5: 'Coming soon...'
          })
