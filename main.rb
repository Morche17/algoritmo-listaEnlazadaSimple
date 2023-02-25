# main.rb
require_relative 'src/lista_ordenada'

lista = ListaOrdenada.new

for i in(0..10000)

    lista.insertar_al_principio(rand(1..101))

end

lista.ordenar
# puts "\nLista ordenada:"
# puts "\n #{lista.imprimir}"

# lista.insertar_al_principio(6)
# lista.insertar_al_principio(1)
# lista.insertar_al_final(9)
# lista.insertar_al_final(8)
#lista.insertar_entre_nodos(4, 3)
#lista.eliminar(6)
lista.imprimir