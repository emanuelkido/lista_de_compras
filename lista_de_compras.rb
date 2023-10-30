class ListaDeCompras
  attr_accessor :produtos
  private :produtos=

  def initialize
    self.produtos = []
  end

  def mostrar_lista
    puts "Lista de Compras:"
      self.produtos.each_with_index do |produto, index|
        puts "#{index + 1}. #{produto}"
      end
  end

  def incluir_produto(produto)
    self.produtos << produto
    puts
    puts "#{produto} foi adicionado à lista de compras."
  end

  def apagar_produto(index)
    if index >= 0 && index < self.produtos.length
      apagado = self.produtos.delete_at(index)
      puts
      puts "#{apagado} foi removido da lista de compras."
    else
      puts
      puts "Índice inválido. Produto não encontrado."
    end
  end
end