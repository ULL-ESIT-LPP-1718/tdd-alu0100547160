#Struct de un nodo para insertar en lista
Nodo = Struct.new(:value, :Next_, :prev)  
# Clase Lista , es una lista doblemente enlazada
# @author Lisseth Vergaray Del Aguila
class Lista 
    #Módulo Enumerable para sort, map, collect, etc
    include Enumerable
    # @return [Numeric] el tamaño de la lista 
    # @return [Pointer] el puntero cabeza de lista
    # @return [Pointer] el puntero cola de lista
    attr_accessor :tam, :cabeza, :cola
        def initialize()
            @tam = 0
            @cabeza = nil
            @cola = nil
        end 
        # Inserta un nodo por la cabeza de la lista 
        # @param dato [Value]  será el campo value del nodo 
        def insertar_delante(dato)
            dato_ = Nodo.new(dato,nil,nil)
            if (tam == 0) 
                @cola = dato_ 
                @cabeza = dato_
                
            else  
                dato_[:Next_] = @cabeza  #|nil|cabeza/dato|nil
                @cabeza.prev = dato_
                dato_[:prev] = nil
                @cabeza = dato_
                
            end 
            @tam = @tam + 1
        
        end
        # Inserta por la cola y aunmenta tamaño de lista 
        # @param dato [Value] será el campo value del nodo
        def insertar_detras(dato)
            dato_ = Nodo.new(dato,nil,nil)
            if (@tam == 0)
                @cabeza = dato_
                @cola = dato_
            else
                dato_[:prev] = @cola
                @cola[:Next_]= dato_
                dato_[:Next_] = nil
                @cola = dato_
            end
           
            @tam = @tam + 1 
        end
        # Extraer un elemento por la cabeza 
        # @return aux retorna el campo value  del nodo
        def extraer_delante
            if(@tam == 0)
               puts "La Lista está vacía"
            else
               aux = @cabeza
               @cabeza = @cabeza[:Next_]
               @cabeza[:prev] = nil
               @tam = @tam - 1
               return aux[:value]
            end
        end
        #Extraer un elemento por la cola
        # @return aux retorna el campo value  del nodo
        def extraer_detras
            if(@tam == 0)
               puts "La Lista está vacía"
            else
               aux = @cola
               @cola = @cola[:prev]
               @cola[:Next_] = nil
               @tam = @tam - 1
               return aux[:value]
            end
        end
        #Mostrar la lista 
        def to_s
           aux = @cabeza
           while(aux != nil)
               puts aux.value
               aux = aux.Next_
           end
        end
        #Metodo de acceso a acada elemento con Enumerable
        def each
            aux = @cabeza
            while(aux != nil)
                yield aux[:value]
                aux= aux[:Next_]
            end
        end
        
end 




#@nodo1 = Nodo.new(5,nil,nil)
#@nodo2 = Nodo.new(8,nil,nil)
# @nodo3 = Nodo.new(9,nil,nil)
#  @lista = Lista.new()
# # @lista.insertar_delante(@nodo1)
#  @lista.insertar_detras(5)
#  @lista.insertar_detras(8)
#  @lista.insertar_detras(15)
#  @lista.insertar_delante(3)
#  @lista.to_s
#  s = @lista.extraer_delante
#  puts s 
#  s = @lista.extraer_detras
#  puts s 
#  puts @lista.to_s
# # @lista.to_s
# # @lista.extraer_detras
# # @lista.to_s
# # @lista.insertar_delante
# # @lista.to_s