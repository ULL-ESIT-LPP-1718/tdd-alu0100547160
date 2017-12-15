class PlatoHarvard 
  
    def initialize(nombre, &block)
        @nombre = nombre
        @vegetales = []
        if block_given?  
          if block.arity == 1
            yield self
          else
            instance_eval(&block) 
          end
        end
    end
    
    def vegetal(nombre, options = {})
      vegetal_ =  nombre
      vegetal_ << " (#{options[:porcion]})" if options[:porcion]
      vegetal_ << " (#{options[:gramos]})" if options[:gramos]
      @vegetales << vegetal_
    
    end
    
end

