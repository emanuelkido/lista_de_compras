require 'csv'

class ListaDeCompras
  attr_accessor :produtos
  private :produtos=

  def initialize
    self.produtos = []
  end

  def mostrar_lista
    if self.produtos.empty?
      puts "A sua lista ainda está vazia."
    else
    puts "Lista de Compras:"
      self.produtos.each_with_index do |produto, index|
        puts "#{index + 1}. #{produto}"
      end
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

  def salvar_em_csv(arquivo)
    CSV.open(arquivo, "w") do |csv|
      self.produtos.each do |produto|
        csv << [produto]
      end
    end
  end

  def carregar_de_csv(arquivo)
    self.produtos = []
    CSV.foreach(arquivo) do |row|
      self.produtos << row[0]
    end
  end
end