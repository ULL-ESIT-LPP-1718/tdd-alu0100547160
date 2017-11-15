require '/home/ubuntu/workspace/p6/tdd/lib/tdd/Lista.rb'

class Alimento 
    include Comparable
    include Enumerable
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
        s << "#{@nombre}        #{@proteinas}      #{@glucidos}      #{@grasas}"
        
        s
    end 
    #Método <=> para Mixin de Comparable 
    def <=>(otro)
        self.get_valor_energetico <=> otro.get_valor_energetico
    end 
    
    def get_valor_energetico
        ve = ((@proteinas * 4) + (@glucidos * 4) + (@grasas * 9))
        ve
    end 
end 

class Grupo_de_Alimento < Alimento 
    attr_reader :grupo
     
    def initialize(grupo, nombre, proteinas, glucidos, grasas )
         @grupo = grupo 
         super(nombre, proteinas, glucidos, grasas)  #encadenamiento (chaining)
    end
    #encadenamiento (chaining)
    def to_s
    s = "#{@grupo}    "
    s << super.to_s  
    
    s
    
    end
    # Restrictivo (con herencia - usa is_a?)
    def ==(other)
        if other.is_a?Alimento
            @nombre == other.nombre && @proteinas == other.proteinas && @glucidos == other.glucidos && @grasas = other.grasas
        else
            false
        end
        
    end 
    # Definiendo <=> para el Mixin de Comporable 
    def <=>(otro)
        self.get_valor_energetico <=> otro.get_valor_energetico && self.grupo <=> otro.grupo
    end


end

# @comida1 = Alimento.new('Bacalao', 17.7, 0.0, 0.4)
# @comida2 = Grupo_de_Alimento.new('Pescados y mariscos','Atún', 21.5, 0.0, 15.5)
# puts @comida2.to_s
# puts @comida2.==(@comida1)




r = [1,2,3,4,5,6].detect{ |i| i.between?(4,5)}
# r = [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]
puts r