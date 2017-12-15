class PlatoHarvard 
  
    def initialize(nombre, &block)
        @nombre = nombre
        @vegetales = []
        @frutas = []
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
      @vegetales << vegetal_
    
    end
    
    def fruta(nombre, options = {})
      fruta_ =  nombre
      fruta_ << " (#{options[:gramos]})" if options[:gramos]
      @frutas << fruta_
    
    end
    
end

