# lista_enlazada.rb
require_relative 'nodo'

class ListaEnlazada
    attr_accessor :cabeza

    def initialize
        @cabeza = nil
    end

    # Método para insertar un nodo al principio de la lista
    def insertar_al_principio(valor)
        nodo_nuevo = Nodo.new(valor)

        if @cabeza.nil?
            @cabeza = nodo_nuevo
        else
            nodo_nuevo.siguiente = @cabeza
            @cabeza = nodo_nuevo
        end
    end

    # Método para insertar un nodo al final de la lista
    def insertar_al_final(valor)
        nodo_nuevo = Nodo.new(valor)

        if @cabeza.nil?
            @cabeza = nodo_nuevo
        else
            nodo_actual = @cabeza
            while nodo_actual.siguiente != nil
                nodo_actual = nodo_actual.siguiente
            end
            nodo_actual.siguiente = nodo_nuevo
        end
    end

    #Método para insertar entre dos nodos de la lista
    def insertar_entre_nodos(valor, valor_despues_de)
        nodo_nuevo = Nodo.new(valor)

        nodo_actual = @cabeza
        while nodo_actual != nil && nodo_actual.valor != valor_despues_de
            nodo_actual = nodo_actual.siguiente
        end

        if nodo_actual.nil?
            return
        end

        nodo_nuevo.siguiente = nodo_actual.siguiente
        nodo_actual.siguiente = nodo_nuevo
    end

    # Método para eliminar un nodo de la lista
    def eliminar(valor)
        if @cabeza.nil?
            return
        end

        if @cabeza.valor == valor
            @cabeza = @cabeza.siguiente
            return
        end

        nodo_actual = @cabeza
        while nodo_actual.siguiente != nil && nodo_actual.siguiente.valor != valor
            nodo_actual = nodo_actual.siguiente
        end

        if nodo_actual.siguiente.nil?
            return
        end

        nodo_actual.siguiente = nodo_actual.siguiente.siguiente
    end
end
