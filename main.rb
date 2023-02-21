# main.rb
require_relative 'src/lista_enlazada'

lista = ListaEnlazada.new
lista.insertar_al_principio(3)
lista.insertar_al_principio(2)
lista.insertar_al_principio(1)
lista.insertar_al_final(9)
lista.insertar_al_final(8)
lista.insertar_entre_nodos(4, 3)
lista.eliminar(2)

nodo_actual = lista.cabeza
while nodo_actual != nil
    puts nodo_actual.valor
    nodo_actual = nodo_actual.siguiente
end
puts 'null'