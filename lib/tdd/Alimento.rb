class Alimento 
    attr_accessor :nombre, :proteinas, :glucidos, :grasas
    
    def initialize (nombre, proteinas, glucidos, grasas)
        @nombre = nombre 
        @proteinas = proteinas
        @glucidos = glucidos
        @grasas = grasas
    end


end 