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

  def customer_to_hash
    {
      'cpf': @cpf, 'name': @name, 'birthday': @birthday
    }
  end
end
