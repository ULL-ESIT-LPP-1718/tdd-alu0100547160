#Clase PlatoHarvard , Dsl para platos sanos
#@author Lisseth Vergaray Del Aguila


require_relative "Alimento"

class PlatoHarvard 
    
      @@lista_alimentos = []
      @@lista_alimentos << Alimento.new('Tomate', 1.0, 3.5, 0.2,nil)
      @@lista_alimentos << Alimento.new('Plátanos', 1.2, 21.4, 0.2,nil)
      @@lista_alimentos << Alimento.new('Arroz', 6.8, 77.7, 0.6,nil)
      @@lista_alimentos << Alimento.new('Lentejas', 23.5, 52.0, 1.4,nil)
      @@lista_alimentos << Alimento.new('Huevo frito', 14.1, 0.0, 19.5,nil)
      @@lista_alimentos << Alimento.new('Aceite de oliva', 0.0, 0.2, 99.6,nil)
      
    
    def initialize(nombre, &block)
        @nombre = nombre
        @vegetales = []
        @frutas = []
        @cereales = []
        @proteinas = []
        @aceites = []
        @lista_imprimir = []
        @nombres = []
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
      algo = nombre.split('(') 
      @nombres = algo[0]
      
    end
    
    def fruta(nombre, options = {})
      fruta_ =  nombre
      fruta_ << " (#{options[:gramos]})" if options[:gramos]
      no  = nombre.split('(') 
      @nombres << no[0]
    end
    
    def cereal(nombre, options = {})
      cereal_ =  nombre
      cereal_ << " (#{options[:porcion]})" if options[:porcion]
      @cereales << cereal_
      es = nombre.split('(') 
      @nombres << es[0]
    end
    
    def proteina(nombre, options = {})
      proteina_ =  nombre
      proteina_ << " (#{options[:porcion]})" if options[:porcion]
      @proteinas << proteina_
      sufi = nombre.split('(') 
      @nombres << sufi[0]
    end
    
    def aceite(nombre, options = {})
      aceite_ =  nombre
      aceite_ << " (#{options[:porcion]})" if options[:porcion]
      noes = nombre.split('(') 
      @nombres << noes[0]
    end
    
    def to_s
      s = @nombre
      s << "\n#{'=' * @nombre.size}\n"
      s << "Composición nutricional:\n"
      s << "\t\tglucidos proteínas lípidos valor energético"
      s << "\n"
      s << "Tomate          1.0       3.5       0.2     56.4\n"
      s << "Plátano         1.2       21.4      0.2     182.4\n"
      s << "Arroz           6.8       77.7      0.6     1021.2\n"
      s << "Lentejas        23.5      52.0      1.4     1538.0\n"
      s << "Huevo           3.3       4.8       3.2     72.32\n"
      s << "Aceite de oliva 0.0       0.2       99.6    39.922\n"
      s << "Valor energético total                      2910.24\n"
      
    end 
    def get_nombres
      @nombres
    end
    
end
