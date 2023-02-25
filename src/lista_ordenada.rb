require_relative 'lista_enlazada'
require 'ruby-progressbar'

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

        progressbar = ProgressBar.create(title: "Ordenando elementos", total: valores_ordenados.length)
    
        valores_ordenados.each do |valor|
            nueva_lista.insertar_al_final(valor)
            progressbar.increment
        end
        
        @cabeza = nueva_lista.cabeza
    end
end
