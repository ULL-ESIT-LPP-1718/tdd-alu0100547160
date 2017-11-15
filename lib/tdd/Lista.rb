
Nodo = Struct.new(:value, :Next_, :prev)  

class Lista 
    include Enumerable
    attr_accessor :tam, :cabeza, :cola
        def initialize()
            @tam = 0
            @cabeza = nil
            @cola = nil
        end 
        #Inserta por la cabeza y aumenta tamaño de lista 
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
        #Inserta por la cola y aunmenta tamaño de lista 
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
        #Extraer un elemento por la cabeza 
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
        #Mostrar lista
        def to_s
           aux = @cabeza
           while(aux != nil)
               puts aux.value
               aux = aux.Next_
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