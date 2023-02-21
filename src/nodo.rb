# nodo.rb
class Nodo
    attr_accessor :valor, :siguiente

    def initialize(valor)
        @valor = valor
        @siguiente = nil
    end
end
