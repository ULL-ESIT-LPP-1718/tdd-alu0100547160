
Nodo = Struct.new(:value, :next, :prev)  

class Lista 
    
    attr_accessor :tam, :cabeza, :cola
        def initialize(tam,cabeza,cola)
            @tam = tam
            @cabeza = cabeza
            @cola = cola
        end 


end