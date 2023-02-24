# Aula 1: Introdução

## Instalação

> [Tutorial Oficial GoRails](https://gorails.com/setup/ubuntu/22.04)

## Seu Primeiro Hello World

1. Para fazer seu primeiro programa ruby crie um arquivo dentro da sua máquina ou container ruby chamado `hello.rb`

   Obs: Os arquivos de código ruby possuem a extensão `.rb`

2. Abra o arquivo e adicione a seguinte linha.
puts 'Hello, World!'
3. Para executar o programa criado, acesse o Terminal ou SSH Console e rode o comando
ruby hello.rb
A instrução puts vai imprimir a mensagem ‘Hello, World!’ toda vez que nosso programa for executado.
Parabéns, agora você é um programador Ruby!!!

## IRB

Uma ótima opção para testarmos códigos pequenos é a ferramenta Irb (Interactive Ruby)
Através de linha de comando ela nos permite interagir com códigos ruby sem a necessidade de criar arquivos, interpretando códigos e retornando resultados de forma imediata.
Não precisa de instalação, então caso você tenha o ruby instalado também tem o IRB!

### Primeiros passos

O Irb estará presente em algumas partes do nosso curso e para que você se familiarize com ele vamos dizer um Hello, world! por linha de comando.

1. No Terminal ou SSH Console, rode o comando.
irb
2. Digite o código a seguir e depois pressione enter para que a mensagem seja imprimida.
puts 'Hello, World!'
