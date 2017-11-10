class Alimento 
    attr_accessor :nombre, :proteinas, :glucidos, :grasas
    
    def initialize (nombre, proteinas, glucidos, grasas)
        @nombre = nombre 
        @proteinas = proteinas
        @glucidos = glucidos
        @grasas = grasas
    end

    def get_nombre
        @nombre
    end
    
    def get_proteinas
        @proteinas
    end
    
    def get_glucidos
        @glucidos
    end
    
    def get_grasas
        @grasas
    end
    
    def to_s
        s = ""
        s += "#{@nombre}        #{@proteinas}      #{@glucidos}      #{@grasas}"
        
        s
    end 
    
    def get_valor_energetico
        ve = ((@proteinas * 4) + (@glucidos * 4) + (@grasas * 9))
        ve
    end 
end 

class Grupo_de_Alimento < Alimento 
    attr_reader :grupo
     
    def initialize( )
         super(0,0,0,0)             #encadenamiento (chaining)
         @grupo = grupo
    end
    
    def to_s
    s = "#{@grupo}"
    s << super.to_s        #encadenamiento (chaining)
    
    end
   
    
            
    
  





end

# grupo, nombre, proteinas, glucidos, grasas,