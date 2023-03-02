# main.rb
require_relative 'src/lista_ordenada'
require 'rainbow/refinement'
using Rainbow

lista = ListaOrdenada.new

for i in(0..70000)

    lista.insertar_al_principio(rand(1..101))

end

iniciar_tiempo = Time.now
lista.seleccion
final_tiempo = Time.now
# puts "\nLista ordenada:"
# puts "\n #{lista.imprimir}"

# lista.insertar_al_principio(6)
# lista.insertar_al_principio(1)
# lista.insertar_al_final(9)
# lista.insertar_al_final(8)
# lista.insertar_entre_nodos(4, 3)
# lista.eliminar(6)
lista.imprimir

lapso_tiempo = final_tiempo - iniciar_tiempo

segundos = lapso_tiempo.to_i
milisegundos = ((lapso_tiempo - segundos) * 1000).to_i
minutos = (segundos/60) % 60
horas = (segundos/3600) % 24
días = segundos / (3600 * 24)
segundos = segundos % 60

puts "\nTiempo de ejecución:".underline + " #{días} ".bright + "días, " +
  "#{horas} ".bright + "horas, " + "#{minutos} ".bright + "minutos, " +
  "#{segundos} ".bright + "segundos y " + "#{milisegundos} ".bright + "milésimas de segundo."
