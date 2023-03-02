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

        progressbar = ProgressBar.create(title: "Ordenando elementos por método de burbuja", total: valores_ordenados.length)

        valores_ordenados.each do |valor|
            nueva_lista.insertar_al_final(valor)
            progressbar.increment
        end
        
        @cabeza = nueva_lista.cabeza
    end

    def seleccion

      ahorita = @cabeza
      pb = ProgressBar.create(title: "Ordenando elementos por método de selección", total: tamaño)

      while ahorita
        min_nodo = ahorita
        nodo_siguiente = ahorita.siguiente

        while nodo_siguiente
          if nodo_siguiente.valor < min_nodo.valor
            min_nodo = nodo_siguiente
          end
          nodo_siguiente = nodo_siguiente.siguiente
        end

        temp = ahorita.valor
        ahorita.valor = min_nodo.valor
        min_nodo.valor = temp
        ahorita = ahorita.siguiente
        pb.increment
      end
      pb.finish
    end

    def insercion
      return if @cabeza.nil?
      pb = ProgressBar.create(title: "Ordenando elementos por método de inserción", total: tamaño)

      ahorita = @cabeza
      ordenado = nil

      while ahorita
        nodo_siguiente = ahorita.siguiente

        if ordenado.nil? || ordenado.valor >= ahorita.valor
          ahorita.siguiente = ordenado
          ordenado = ahorita
        else
          buscar = ordenado
          while buscar.siguiente && buscar.siguiente.valor < ahorita.valor
            buscar = buscar.siguiente
          end
          ahorita.siguiente = buscar.siguiente
          buscar.siguiente = ahorita
        end

        ahorita = nodo_siguiente
        pb.increment
      end
      pb.finish
      
      @cabeza = ordenado
    end


    def tamaño
      ahorita = @cabeza
      tamaño = 0
      while ahorita
        tamaño += 1
        ahorita = ahorita.siguiente
      end
      tamaño
    end
end
