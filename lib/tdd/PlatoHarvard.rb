class PlatoHarvard 
  
    def initialize(nombre, &block)
        @nombre = nombre
        @vegetales = []
        @frutas = []
        @cereales = []
        @proteinas = []
        @aceites = []
        
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
    
    def cereal(nombre, options = {})
      cereal_ =  nombre
      cereal_ << " (#{options[:porcion]})" if options[:porcion]
      @cereales << cereal_
    end
    
    def proteina(nombre, options = {})
      proteina_ =  nombre
      proteina_ << " (#{options[:porcion]})" if options[:porcion]
      @proteinas << proteina_
    end
    
    def aceite(nombre, options = {})
      aceite_ =  nombre
      aceite_ << " (#{options[:porcion]})" if options[:porcion]
      @aceites << aceite_
    end
    
end

