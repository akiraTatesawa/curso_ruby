# Aula 2: Conceitos Básicos

## Tipos de Dados

- `Integer`: números inteiros;
- `Float`: números reais inexatos;
- `Boolean`: armazena a veracidade de um dado, pode ser `true (TrueClass)` ou `false (FalseClass)`;
- `String`: representa um texto; conjunto de letras, símbolos, números, etc.; definido dentro de *aspas simpeles* ou *aspas duplas*;
- `Array`: conjunto de dados armazenados numa *lista ordenada*; é definido utilizando *colchetes*;
- `Symbol`: é um tipo de dado semelhando a `string`, com a diferença de que ele é um *objeto imutável*. Duas string idênticas podem ser objetos diferentes, mas um símbulo é apenas um objeto, ocupando sempre o mesmo espaço na memória; é definido utilizando *dois pontos* seguido de seu nome;
  - A ideia não é manipular os dados do símbolo (igual fazemos com uma string), mas sim utilizá-lo para representar algo;
- `Hash`: coleção de dados organizados por chaves únicas e seus respectivos valores; é definido com *chaves*;
  - as *chaves* da hash são consideradas símbolos;

*OBS.:* a tipagem é dinâmica, ou seja, o tipo da variável é definido de acordo com o dado atribuído.

```ruby
# declarando uma variável chamada int e atribuíndo o valor 10
int = 10

# método do ruby que retorna o tipo da variável
int.class # => Integer

# reatribuir o valor da variável, alterando o tipo
int = 0.1
int.class # => Float

boo = true
boo.class # => TrueClass

# declarando uma array
array = ['position_0', 'position_1', 'position_2']
array.class # => Array
array[0]# => "position_0"
array[-1] # => "position_2"

# declarando um símbolo
sym = :ruby_simbolo
sym.class # => Symbol
sym.object_id # => 2486428 // a posição ocupada pelo símbolo na memória

sym2 = :ruby_symbolo
sym2.object_id # => 2486428 // ocupa o mesmo espaço de memória

# declarando uma hash
sample_hash = {
 course: 'ruby',
 language: 'pt-Br',
 locale: 'onebitcode.com'
} # => {:course=>"ruby", :language=>"pt-Br", :locale=>"onebitcode.com"}

sample_hash.class # => Hash
sample_hash[:course] # => 'ruby'
```

## Entrada e Saída

```ruby
# saída de dado
print 'Digite seu nome: '

# Recebendo uma entrada do teclado
name = gets.chomp

# saída utilizando puts
# use códigos ruby dentro de uma string com #{code}
puts "Hello #{name}!"
```

- `gets` é um método que recebe como entrada um dado inserido pelo teclado. Como ele captura qualquer coisa precisamos do `.chomp` para que quando o enter for pressionado ele não crie uma quebra de linha;

```ruby
print "Digite o primeiro número inteiro: "
number1 = gets.chomp.to_i

print "Digite o segundo número inteiro: "
number2 = gets.chomp.to_i

addition = number1 + number2
puts "O resultado da adição entre os dois números é #{addition}"
```

- `to_i` transforma a string em um número inteiro;

## Desafios

1. No Irb, crie todos os principais tipos de dados mencionados na aula com valores diferentes dos exemplos.
2. Crie um programa que receba o nome e idade de uma pessoa e no final exiba estes dois dados em uma única frase.
3. Crie um programa que que receba dois números inteiros e no final exiba a soma, subtração, adição e divisão entre eles.

```ruby
# frozen_string_literal: true

# This class has one_bit_code methods
class OneBitChallenge
  # return [nil]
  def print_name_cli
    print 'Type your name: '
    name = gets.chomp

    print 'Type your age: '
    age = gets.chomp.to_i

    puts "Name: #{name}\nAge: #{age}"
  end

  # @param name [String]
  # @param age [Integer]
  # @return [String]
  def print_info(name, age)
    "Your name is #{name}\nYou are #{age} years old"
  end

  def operate
    print 'First digit: '
    n1 = gets.chomp.to_i

    print 'Second digit: '
    n2 = gets.chomp.to_i

    sum = n1 + n2
    product = n1 * n2
    division = n1 / n2
    subtraction = n1 - n2

    puts "Sum: #{sum}"
    puts "Product: #{product}"
    puts "Division: #{division}"
    puts "Subtraction: #{subtraction}"
  end
end

challenge = OneBitChallenge.new
challenge.print_name_cli
challenge.print_info('Arthur', 999)
challenge.operate
