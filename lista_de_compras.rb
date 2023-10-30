class ListaDeCompras
  attr_accessor :produtos
  private :produtos=
  
  def initialize
    self.produtos = []
  end
end