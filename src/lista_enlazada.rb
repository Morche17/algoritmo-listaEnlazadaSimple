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

    # Método para insertar entre dos nodos de la lista
    def insertar_entre_nodos(valor, valor_despues_de)
        nodo_nuevo = Nodo.new(valor)

        nodo_actual = @cabeza

        # Esta línea comienza un bucle while que se ejecutará mientras el nodo actual no sea nil y su valor no sea igual al valor después del cual se insertará el nuevo nodo.
        while nodo_actual != nil && nodo_actual.valor != valor_despues_de

            # Esta línea asigna el siguiente nodo de la lista al nodo actual. Esto significa que el bucle se mueve a través de la lista enlazada hasta que se encuentra el nodo después del cual se insertará el nuevo nodo.
            nodo_actual = nodo_actual.siguiente

        end

        if nodo_actual.nil?
            return
        end

        nodo_nuevo.siguiente = nodo_actual.siguiente
        nodo_actual.siguiente = nodo_nuevo
    end
    # Fin del método

    # Método para eliminar un nodo de la lista
    def eliminar(valor)
        if @cabeza.nil?
            return
        end

        # Condición que verifica si el valor del primer nodo en la lista enlazada es igual al valor que se eliminará. Si es así, el primer nodo se elimina y la cabeza de la lista se actualiza para apuntar al segundo nodo en la lista.
        if @cabeza.valor == valor
            @cabeza = @cabeza.siguiente
            return
        end

        nodo_actual = @cabeza

        # Bucle while que se ejecutará mientras el siguiente nodo del nodo actual no sea nil y su valor no sea igual al valor que se eliminará.
        while nodo_actual.siguiente != nil && nodo_actual.siguiente.valor != valor

            # Asigna el siguiente nodo de la lista al nodo actual. Esto significa que el bucle se mueve a través de la lista enlazada hasta que se encuentra el nodo que contiene el valor que se eliminará.
            nodo_actual = nodo_actual.siguiente
        end

        # Condición que verifica si el siguiente nodo del nodo actual es nulo. Si es así, significa que el valor que se debe eliminar no se encuentra en la lista enlazada, y la función simplemente regresa.
        if nodo_actual.siguiente.nil?
            return
        end

        # Asigna el nodo siguiente al nodo siguiente del nodo actual. Esto se hace para eliminar el nodo que contiene el valor que se desea eliminar de la lista enlazada.
        nodo_actual.siguiente = nodo_actual.siguiente.siguiente
    end
    # Fin del método
end
