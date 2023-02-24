require_relative 'lista_enlazada'

class ListaOrdenada < ListaEnlazada
    def ordenar
        valores = []
        nodo_actual = @cabeza
        while nodo_actual != nil
            valores << nodo_actual.valor
            nodo_actual = nodo_actual.siguiente
        end
    
        valores_ordenados = valores.sort
        nueva_lista = ListaEnlazada.new
    
        valores_ordenados.each do |valor|
            nueva_lista.insertar_al_final(valor)
        end
        
        @cabeza = nueva_lista.cabeza
    end
end
