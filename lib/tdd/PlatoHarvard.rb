class PlatoHarvard 
    attr_accessor :nombre, :vegetal, :fruta, :cereal, :proteina, :aceite
    def initialize(nombre, &block)
        @nombre = nombre
       
        if block_given?  
          if block.arity == 1
            yield self
          else
            instance_eval(&block) 
          end
        end
    end
    
end

