
Nodo = Struct.new(:value, :Next_, :prev)  

class Lista 
    
    attr_accessor :tam, :cabeza, :cola
        def initialize()
            @tam = 0
            @cabeza = nil
            @cola = nil
        end 
        #inserta por la cabeza y aumenta tamaño de lista 
        def insertar_delante(dato)
            if (tam == 0) |
                @cola = dato 
                dato.Next_ = nil
            else  
                @cabeza.prev = dato
                dato.Next_ = @cabeza
            end 
            
            @cabeza = dato  #|nil|cabeza/dato|nil
            dato.prev = nil
            @tam = @tam + 1
        
        end
        #inserta por la cola y aunmenta tamaño de lista 
        def insertar_detras(dato)
            if (@tam == 0)
                @cabeza = dato
                dato.prev = nil
            else
                @cola.Next_ = dato
                dato.prev = @cola
            end
            @cola = dato 
            dato.Next_ = nil
            @tam = @tam + 1 
        end
        #extraer un elemento por la cabeza 
        def extraer_delante
            if(@tam == 0)
               puts "La Lista está vacía"
           else
               aux = @cabeza
               (@cabeza[:Next_]).prev = nil
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
        
end 


