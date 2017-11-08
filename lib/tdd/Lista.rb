
Nodo = Struct.new(:value, :next, :prev)  

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
                dato.next = nil
            else  
                @cabeza.prev = dato
                dato.next = @cabeza
            end 
            
            @cabeza = dato  #|nil|cabeza/dato|nil
            dato.prev = nil
            @tam = @tam + 1
        
        end
        #inserta por la cola y aunmenta tamaño de lista 
        def insertar_detras(dato)
            if (tam == 0)
                @cabeza = dato
                dato.prev = nil
            else
                @cola.next = dato
                dato.prev = @cola
            end
            @cola = dato 
            dato.next = nil
            @tam = @tam + 1 
        end
        
        
        
end

