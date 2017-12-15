#require '/home/ubuntu/workspace/p6/tdd/lib/tdd/Lista.rb'
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
    attr_accessor :nombre, :proteinas, :glucidos, :grasas, :g
    
    # Método para inicializar el objeto
    # @param nombre proteinas glucidos grasas
    def initialize (nombre, proteinas, glucidos, grasas, g)
        @nombre = nombre 
        @proteinas = proteinas
        @glucidos = glucidos
        @grasas = grasas
        @g = g
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
        # s << "#{@nombre}        #{@proteinas}      #{@glucidos}      #{@grasas}"
        printf("%18s %10s %10s %10s %10s"," #{@nombre}","#{@proteinas}"," #{@glucidos}","#{@grasas}","#{get_valor_energetico}");
        
        # s << "#{self.get_valor_energetico}"
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
        if otro.is_a?Alimento
            self.get_valor_energetico <=> otro.get_valor_energetico
        end
    end 
    #Método each para poder hacer uso de Enumerable 
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
        ve.round(3)
    end 
    # Método para calcular aibc de dos individuos
    # @return suma que es un vector con el sumatorio de los indices 
    def aibc 
        r = []
		(0..g.size -  1).map { |i|
			s = []
			(1..g[i].size-1).map { |m|
				if g[i][m] < g[i][0] 
				    s << 0.0
				else
				    s << (((g[i][m] - g[i][0]) + (g[i][m-1] - g[i][0]))/2)*5
				end
			}
		r << s
		}
		suma = []
		(0..g.size-1).collect { |e|
			s = 0
			(0..r[e].size-1).map { |k|
				s = s + r[e][k]
			}
			suma << s
		}
		suma
    end   
end 

# Clase Grupo_de_Alimento que hereda de Alimento 
# @author Lisseth Vergaray 
class Grupo_de_Alimento < Alimento 
    # @return [String] grupo de alimento 
    attr_reader :grupo
    # Método para inicializar el objeto 
    def initialize(grupo, nombre, proteinas, glucidos, grasas,g )
         @grupo = grupo 
         super(nombre, proteinas, glucidos, grasas,g)  #encadenamiento (chaining)
    end
    #Encadenamiento (chaining)
    def to_s
    #s = "#{@grupo}    "
    s = " "
    s << super.to_s
    end
    #Restrictivo (con herencia - usa is_a?)
    # def ==(other)
    #     if other.is_a?Grupo_de_Alimento
    #         @grupo == other.grupo && @nombre == other.nombre && @proteinas == other.proteinas && @glucidos == other.glucidos && @grasas = other.grasas
    #     else
    #         false
    #     end
    # end 
    #Definiendo <=> para el Mixin de Comporable 
    def <=>(otro)
        if otro.is_a?Grupo_de_Alimento
          self.get_valor_energetico <=> otro.get_valor_energetico 
        end
    end
end
