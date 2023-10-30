# frozen_string_literal: true
require_relative 'lista_de_compras'

# Menu principal
lista = ListaDeCompras.new

loop do
  puts "\nMenu de Compras"
  puts "1. Ver lista de produtos"
  puts "2. Incluir novo produto"
  puts "3. Apagar produto"
  puts "4. Sair"
  puts
  print "Escolha uma opção: "

  escolha = gets.chomp.to_i

  case escolha
  when 1
    puts
    lista.mostrar_lista
  when 2
    puts
    print "Digite o nome do produto a ser incluído: "
    puts
    produto = gets.chomp
    lista.incluir_produto(produto)
  when 3
    puts
    lista.mostrar_lista
    print "Digite o número do produto a ser apagado: "
    index = gets.chomp.to_i - 1
    lista.apagar_produto(index)
  when 4
    puts 

    puts "*"*30
    puts "Saindo do programa. Até logo!"
    puts "*"*30  
    break
  else
    puts
    puts "Opção inválida. Tente novamente."
  end
end
