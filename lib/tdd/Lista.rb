
Nodo = Struct.new(:value, :Next_, :prev)  

class Lista 
    include Enumerable
    attr_accessor :tam, :cabeza, :cola
        def initialize()
            @tam = 0
            @cabeza = nil
            @cola = nil
        end 
        #inserta por la cabeza y aumenta tamaño de lista 
        def insertar_delante(dato)
            if (tam == 0) 
                @cola = dato 
                dato[:Next_] = nil
            else  
                @cabeza.prev = dato
                dato[:Next_] = @cabeza
            end 
            
            @cabeza = dato  #|nil|cabeza/dato|nil
            dato.prev = nil
            @tam = @tam + 1
        
        end
        #inserta por la cola y aunmenta tamaño de lista 
        def insertar_detras(dato)
            if (@tam == 0)
                @cabeza = dato
                dato.prev= nil
            else
                @cola.prev= dato
                dato.prev= @cola
            end
            @cola = dato 
            dato[:Next_] = nil
            @tam = @tam + 1 
        end
        #extraer un elemento por la cabeza 
        def extraer_delante
            if(@tam == 0)
               puts "La Lista está vacía"
           else
               aux = @cabeza
              # (@cabeza[:Next_]).prev = nil
               @cabeza = @cabeza[:Next_]
               @tam = @tam - 1
               return aux[:value]
           end
        end
        #extraer un elemento por la cola
        def extraer_detras
            if(@tam == 0)
               puts "La Lista está vacía"
            else
               aux = @cola
            #   @cola[:prev]).Next_ = nil 
               @cola = @cola[:prev]
               @tam = @tam - 1
               return aux[:value]
            end
        end
        #mostrar lista
        def to_s
           aux = @cabeza
           while(aux != nil)
               puts aux.value
               aux = aux.Next_
           end
        end
        
        #Metodo de acceso a acada elemento, Comparable y Enumerable
        def each
            aux = @cabeza
            while(aux != nil)
                yield aux[:value]
                aux= aux[:next]
            end
        end
        
end 




# @nodo1 = Nodo.new(5,nil,nil)
# @nodo2 = Nodo.new(8,nil,nil)
# @nodo3 = Nodo.new(9,nil,nil)
# @lista = Lista.new()
# @lista.insertar_delante(@nodo1)
# @lista.insertar_detras(@nodo2)
# @lista.to_s
# @lista.extraer_delante
# @lista.to_s
# @lista.extraer_detras
# @lista.to_s
# @lista.insertar_delante
# @lista.to_s