require '/home/ubuntu/workspace/p6/tdd/lib/tdd/Lista.rb'
# Clase ALimento , Plantilla para representar un alimento 
# con sus respectivo nombre e información sobre nutrientes
# @author Lisseth Vergaray Del Aguila
class Alimento 
    #Módulo comparable que se incluye para hacer uso de sus utulidades
    include Comparable
    # @return [String] nombre del alimento
    # @return [Numeric] proteinas que contiene el alimento
    # @return [Numeric] glúcidos que contiene el alimento
    # @return [Numeric] grasas que contiene el alimento
    attr_accessor :nombre, :proteinas, :glucidos, :grasas
    
    # Método para inicializar el objeto
    # @param nombre proteinas glucidos grasas
    def initialize (nombre, proteinas, glucidos, grasas)
        @nombre = nombre 
        @proteinas = proteinas
        @glucidos = glucidos
        @grasas = grasas
    end
    # Getter de atributo nombre 
    # @return nombre
    def get_nombre
        @nombre
    end
    # Getter de atributo proteínas 
    # @return proteinas
    def get_proteinas
        @proteinas
    end
    # Getter de atributo glúcidos
    # @return glucidos
    def get_glucidos
        @glucidos
    end
    # Getter de atributo grasas
    # @return grasas
    def get_grasas
        @grasas
    end
    # Método para mostrar el objeto
    # @return cadena s
    def to_s
        s = ""
        s << "#{@nombre}        #{@proteinas}      #{@glucidos}      #{@grasas}"
        
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
    # Método <=> para Mixin de Comparable 
    # @param otro , recibe otro objeto Alimento para compararse
    def <=>(otro)
        self.get_valor_energetico <=> otro.get_valor_energetico
    end 
    # Método each para poder hacer uso de Enumerable 
    # def each 
    #     yield @nombre
    #     yield @proteinas
    #     yield @glucidos
    #     yield @grasas
    #     yield self.get_valor_energetico
    # end
    # Método para calcular el valor enérgetico del ALimento
    # @return ve 
    def get_valor_energetico
        ve = ((@proteinas * 4) + (@glucidos * 4) + (@grasas * 9))
        ve
    end 
end 

# Clase Grupo_de_Alimento que hereda de Alimento 
# @author Lisseth Vergaray 
class Grupo_de_Alimento < Alimento 
    # @return [String] grupo de alimento 
    attr_reader :grupo
    # Método para inicializar el objeto 
    def initialize(grupo, nombre, proteinas, glucidos, grasas )
         @grupo = grupo 
         super(nombre, proteinas, glucidos, grasas)  #encadenamiento (chaining)
    end
    #Encadenamiento (chaining)
    def to_s
    s = "#{@grupo}    "
    s << super.to_s  
    end
    #Restrictivo (con herencia - usa is_a?)
    def ==(other)
        if other.is_a?Grupo_de_Alimento
            @grupo == other.grupo && @nombre == other.nombre && @proteinas == other.proteinas && @glucidos == other.glucidos && @grasas = other.grasas
        else
            false
        end
    end 
    #Definiendo <=> para el Mixin de Comporable 
    def <=>(otro)
        self.get_valor_energetico <=> otro.get_valor_energetico #&& self.grupo <=> otro.grupo
    end
    #Método para Enumerable
    # def each 
    #     yield @grupo
    #     yield @nombre
    #     yield @proteinas
    #     yield @glucidos
    #     yield @grasas
    #     yield self.get_valor_energetico
    # end
    
end

# # @comida1 = Alimento.new('Bacalao', 17.7, 0.0, 0.4)
# # @comida2 = Grupo_de_Alimento.new('Pescados y mariscos','Atún', 21.5, 0.0, 15.5)
# # puts @comida2.to_s
# # puts @comida2.==(@comida1)




# r = [1,2,3,4,5,6].detect{ |i| i.between?(4,5)}
# # r = [1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]
# puts r

# @listas = Lista.new()
#       #Huevos lácteos y helados 
#       @grupo11 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Huevo frito', 14.1, 0.0, 19.5)
#       @grupo12 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Leche vaca', 3.3, 4.8, 3.2)
#       @grupo13 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Yogurt', 3.8, 4.9, 3.8)
#       #Carnes y derivados
#       @grupo21 = Grupo_de_Alimento.new('Carnes y derivados', 'Cerdo', 21.5, 0.0, 6.3)
#       @grupo22 = Grupo_de_Alimento.new('Carnes y derivados', 'Ternera', 21.1, 0.0, 3.1)
#       @grupo23 = Grupo_de_Alimento.new('Carnes y derivados', 'Pollo', 20.6, 0.0, 5.6)
#       @listas.insertar_detras(@grupo11)
#       @listas.insertar_detras(@grupo12) 
#       @listas.insertar_delante(@grupo13)
#       @listas.insertar_delante(@grupo21)
#       @listas.insertar_delante(@grupo22)
      
#   puts  @grupo11.get_valor_energetico
#   puts @grupo12.get_valor_energetico
#   puts  @grupo13.get_valor_energetico
#   puts  @grupo21.get_valor_energetico
#   puts @grupo22.get_valor_energetico