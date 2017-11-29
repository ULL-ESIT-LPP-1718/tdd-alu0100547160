require "spec_helper"
require 'benchmark'



# RSpec.describe Alimento do
#     # before :each do
#     #     @alimento1 = Alimento.new("Huevo frito",14.1,0.0,19.5)
#     #     @alimento2 = Alimento.new("Leche vaca",3.3,4.8,3.2)
#     #     @alimento3 = Alimento.new("Yogurt",3.8,4.9,3.8)
#     # end 
#     # describe "1) Expectativas de la clase" do
#     #     it "Se instancia bien el objeto @alimento" do
#     #       expect(@alimento1).to be_an_instance_of(Alimento)
#     #     end 
        
#     #     it "Has a version number" do
#     #       expect(Tdd::VERSION).not_to be nil
#     #     end
      
#     #     it "Does something useful" do
#     #       expect(true).to eq(true)
#     #     end
#     # end 
#     # describe "2) Expectativas de los atributos de la clase Alimento" do
        
#     #     it "Se almacena correctamente el atributo nombre" do
#     #       expect(@alimento1.nombre).to eq('Huevo frito') 
#     #     end
        
#     #     it "Se almacena correctamente el atributo proteínas" do
#     #       expect(@alimento1.proteinas).to eq(14.1) 
#     #     end
        
#     #     it "Se almacena correctamente el atributo glúcidos" do
#     #       expect(@alimento1.glucidos).to eq(0.0) 
#     #     end
        
#     #     it "Se almacena correctamente el atributo grasas" do
#     #       expect(@alimento1.grasas).to eq(19.5)
#     #     end
      
#     # end 
#     # describe "3) Expectativas para los métodos getter de los atributos" do 
#     #     it "Funciona el método  get_nombre " do
#     #       expect(@alimento1.get_nombre).to eq('Huevo frito')
#     #     end
        
#     #     it "Funciona el método  get_proteínas" do
#     #       expect(@alimento1.get_proteinas).to eq(14.1)
#     #     end
        
#     #     it "Funciona el método  get_glúcidos" do
#     #       expect(@alimento1.get_glucidos).to eq(0.0)
#     #     end
        
#     #     it "Funciona el método  get_grasas" do
#     #       expect(@alimento1.get_grasas).to eq(19.5)
#     #     end
        
#     #     it "Funciona el método  to_s" do
#     #       expect(@alimento1.to_s).to eq("Huevo frito        14.1      0.0      19.5")
#     #     end
        
#     #     it "Funciona el método  get_valor_energetico" do
#     #       expect(@alimento1.get_valor_energetico).to eq(231.9)
#     #     end
      
#     # end
#     # describe "4) Expectaticvas para los tipos de atributos" do
#     #     it "El tipo del atributo nombre debe ser un String" do
#     #       expect(@alimento1.nombre).to be_a(String) 
#     #     end 
        
#     #     it "El tipo del atributo proteínas debe ser un Float" do
#     #       expect(@alimento1.proteinas).to be_a(Float) 
#     #     end
        
#     #     it "El tipo del atributo glúcidos debe ser un Float" do
#     #       expect(@alimento1.glucidos).to be_a(Float) 
#     #     end
        
#     #     it "El tipo del atributo grasas debe ser un Float" do
#     #       expect(@alimento1.grasas).to be_a(Float) 
#     #     end
      
#     # end  
# end

# RSpec.describe Lista do
#     # before :all do
#     #   @nodo1 = Nodo.new(5,nil,nil)
#     #   @nodo2 = Nodo.new(8,nil,nil)
#     #   @lista = Lista.new()
      
#     # end
    
#     # context "1) Nodo:" do
#     #     it "Debe exitir un Nodo" do
#     #       expect(Nodo).not_to be nil
#     #     end
#     #     it "Debe exitir el atributo next a nil " do
#     #       expect(@nodo1.Next_).to be nil
#     #     end
#     #     it "Debe existir el atributo prev a nill" do
#     #       expect(@nodo1.prev).to be nil
#     #     end
#     # end
 
#     # context "2) Lista:" do
#     #     it "Debe existir la clase Lista" do 
#     #       expect(Lista).to be_a(Class)
#     #     end 
#     #     it "Debe exitir el atributo tamaño" do
#     #       expect(@lista.tam).not_to be nil
#     #     end
#     #     it "El atributo tam debe ser un entero" do
#     #       expect(@lista.tam).to be_a(Integer)  
#     #     end
#     #     it "Debe exitir el atributo cabeza" do
#     #       expect(@lista.cabeza).to be nil
#     #     end
#     #     it "Debe existir el atributo cola" do
#     #       expect(@lista.cola).to be nil
#     #     end
#     #     it "Se debe poder insertar un elemento en la lista" do
#     #       @lista.insertar_delante(5)
#     #       @lista.insertar_detras(8)
#     #     end
#     #     it "Se debe poder extraer un elemento por delante y por detrás" do
#     #       @lista.insertar_detras(5)
#     #       @lista.insertar_detras(9)
#     #       @lista.insertar_detras(15)

#     #       expect(@lista.extraer_delante).to  eq(5)
#     #       expect(@lista.extraer_detras).to  eq(15) 
#     #     end
      
#     # end
# end

# RSpec.describe Grupo_de_Alimento do
#     # context "1) Herencia" do
#     #     before :each do
#     #       @grupo1 = Grupo_de_Alimento.new('Alimentos grasos', 'Chocolate',5.3, 47.0, 30.0)
#     #     end    
          
#     #     it "Un objeto grupo1 es una instancia de la clase Grupo_de_Alimento" do
#     #       expect(@grupo1).to be_an_instance_of(Grupo_de_Alimento) 
#     #     end
#     #     it "Un objeto grupo1 es una instancia de la clase Object" do
#     #       expect(@grupo1).not_to be_an_instance_of(Object) 
#     #     end
#     #     it "Un objeto grupo1 es una instancia de la clase BasicObject" do
#     #       expect(@grupo1).not_to be_an_instance_of(BasicObject)
#     #     end
#     #     it "Un grupo1 es un Grupo_de_Alimento" do
#     #       expect(@grupo1).to be_a_kind_of(Grupo_de_Alimento) 
#     #     end
#     #     it "Un grupo1 es un Object" do
#     #       expect(@grupo1).to be_a_kind_of(Object) 
#     #     end
#     #     it "Un grupo1 es un BasicObject" do
#     #       expect(@grupo1).to be_a_kind_of(BasicObject) 
#     #     end
#     # end
    
#     # context "2) Tipo" do 
#     #     before :each do
#     #       @grupo1 = Grupo_de_Alimento.new('Alimentos grasos', 'Chocolate', 5.3, 47.0, 30.0)
#     #     end    
      
#     #     it "Un objeto grupo1 responde al método grupo" do
#     #       expect(@grupo1).to respond_to(:grupo) 
#     #     end
#     #     it "Un objeto grupo1 responde al método nombre por la herencia " do
#     #       expect(@grupo1).to respond_to(:nombre)
#     #     end
#     #     it "Un objeto grupo1 responde a los métodos proteinas y glúcidos  por la herencia " do
#     #       expect(@grupo1).to respond_to(:proteinas, :glucidos) 
#     #     end
#     #     it "un objeto grupo1 responde al método grasas" do
#     #       expect(@grupo1).to respond_to('get_grasas') 
#     #     end
      
#     # end 
    
#     # context "3) Listas de ALimentos por Grupo" do 
#     #     before :all do 
#     #       @listas = Lista.new()
#     #       #Huevos lácteos y helados 
#     #       @grupo11 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Huevo frito', 14.1, 0.0, 19.5)
#     #       @grupo12 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Leche vaca', 3.3, 4.8, 3.2)
#     #       @grupo13 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Yogurt', 3.8, 4.9, 3.8)
#     #       #Carnes y derivados
#     #       @grupo21 = Grupo_de_Alimento.new('Carnes y derivados', 'Cerdo', 21.5, 0.0, 6.3)
#     #       @grupo22 = Grupo_de_Alimento.new('Carnes y derivados', 'Ternera', 21.1, 0.0, 3.1)
#     #       @grupo23 = Grupo_de_Alimento.new('Carnes y derivados', 'Pollo', 20.6, 0.0, 5.6)
#     #       #Pescados y mariscos
#     #       @grupo31 = Grupo_de_Alimento.new('Pescados y mariscos', 'Bacalao', 17.7, 0.0, 0.4)
#     #       @grupo32 = Grupo_de_Alimento.new('Pescados y mariscos', 'Atún', 21.5, 0.0, 15.5)
#     #       @grupo33 = Grupo_de_Alimento.new('Pescados y mariscos', 'Salmón', 19.9, 0.0, 13.6)
#     #       #Alimentos grasos
#     #       @grupo41 = Grupo_de_Alimento.new('Alimentos grasos', 'Aceite de oliva', 0.0, 0.2, 99.6)
#     #       @grupo42 = Grupo_de_Alimento.new('Alimentos grasos', 'Mantequilla', 0.7, 0.0, 83.2)
#     #       @grupo43 = Grupo_de_Alimento.new('Alimentos grasos', 'Chocolate', 5.3, 47.0, 30.0)
#     #       #Alimentos ricos en carbohidratos
#     #       @grupo51 = Grupo_de_Alimento.new('Alimentos ricos en carbohidratos', 'Azúcar', 0.0, 99.8, 0.0)
#     #       @grupo52 = Grupo_de_Alimento.new('Alimentos ricos en carbohidratos', 'Arroz', 6.8, 77.7, 0.6)
#     #       @grupo53 = Grupo_de_Alimento.new('Alimentos ricos en carbohidratos', 'Lentejas', 23.5, 52.0, 1.4)
#     #       @grupo54 = Grupo_de_Alimento.new('Alimentos ricos en carbohidratos', 'Papas', 2.0, 15.4, 0.1)
#     #       #Verduras y Hortalizas
#     #       @grupo61 = Grupo_de_Alimento.new('Verduras y Hortalizas', 'Tomate', 1.0, 3.5, 0.2)
#     #       @grupo62 = Grupo_de_Alimento.new('Verduras y Hortalizas', 'Cebolla', 1.3, 5.8, 0.3)
#     #       @grupo63 = Grupo_de_Alimento.new('Verduras y Hortalizas', 'Calabaza', 1.1, 4.8, 0.1)
#     #       #Frutas
#     #       @grupo71 = Grupo_de_Alimento.new('Frutas', 'Manzana', 0.3, 12.4, 0.4)
#     #       @grupo72 = Grupo_de_Alimento.new('Frutas', 'Plátanos', 1.2, 21.4, 0.2)
#     #       @grupo73 = Grupo_de_Alimento.new('Frutas', 'Pera', 0.5, 12.7, 0.3)
        
#     #       #@nodo1 = Nodo.new(@grupo73,nil,nil)
#     #       @listas.insertar_detras(@grupo73)
#     #       @listas.insertar_detras(@grupo72)
#     #       @listas.insertar_delante(@grupo71)
#     #       @listas.insertar_delante(@grupo31)
#     #       @listas.insertar_delante(@grupo21)

#     #     end
      
#     #     it "El grupo Huevos lácteos y helados, Carnes y derivados, Pescados y mariscos" do
#     #       puts @listas.to_s 
#     #     end
#     # end
# end

# RSpec.describe Comparable do
#     # before :all do 
#     #   @alimento1 = Alimento.new('Cerdo', 21.5, 0.0, 6.3)
#     #   @alimento2 = Alimento.new('Plátanos', 1.2, 21.4, 0.2)
      
#     #   @grupo_alimento1 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Huevo frito', 14.1, 0.0, 19.5)
#     #   @grupo_alimento2 = Grupo_de_Alimento.new('Frutas', 'Manzana', 0.3, 12.4, 0.4)
#     #   @grupo_alimento3 = Grupo_de_Alimento.new('Frutas', 'Pera', 0.5, 12.7, 0.3)
#     # end
  
#     # context "1) Para clase Alimento :<=>" do 
#     #   it "Se debe poder comparar con  > dos objetos Alimento" do
#     #     expect(@alimento1 > @alimento2).to eq(true)   
#     #   end
#     #   it "Se debe poder comparar con < dos Objetos Alimento" do
#     #     expect(@alimento1 < @alimento2).to eq(false)
#     #   end
#     #   it "Se debe poder comparar con == dos Objetos ALimento" do 
#     #     expect(@alimento1 == @alimento2).to eq(false)
#     #   end
#     #   it "Se debe poder comprar con <= dos Objetos Alimento" do
#     #     expect(@alimento1 <= @alimento2).to eq(false)
#     #   end 
#     #   it "Los métodos del módulo Comparable debe poder ser accedidos" do
#     #     expect(@alimento1).to respond_to(:>=)
#     #   end
#     # end
#     # context "2) Para clase Grupo_de_Alimento : <=>" do 
#     #   it "Se debe poder comparar con  > dos objetos Grupo_de_Alimento" do
#     #     expect(@grupo_alimento1.grupo > @grupo_alimento2.grupo).to eq(true)   
#     #   end
#     #   it "Se debe poder comparar con < dos Objetos Grupo_de_Alimento" do
#     #     expect(@grupo_alimento1 < @grupo_alimento2).to eq(false)
#     #   end
#     #   it "Se debe poder comparar con == dos Grupo_de_Alimento" do 
#     #     expect(@grupo_alimento2 == @grupo_alimento3).to eq(false)
#     #   end
#     #   it "Se debe poder comprar con <= dos Grupo_de_Alimento" do
#     #     expect(@grupo_alimento1 <= @grupo_alimento2).to eq(false)
#     #   end 
#     #   it "Los métodos del módulo Comparable debe poder ser accedidos" do
#     #     expect(@grupo_alimento3).to respond_to(:==)
#     #   end
#     #   # it "Usando el between de Comparable" do
#     #   #   expect(@grupo_alimento2 ).to between(@grupo_alimento1,@grupo_alimento3)
#     #   # end
#     # end 
# end

# RSpec.describe Enumerable do
#     # before :all do 
#     #   @listas = Lista.new()
#     #   #Huevos lácteos y helados 
#     #   @grupo11 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Huevo frito', 14.1, 0.0, 19.5)
#     #   @grupo12 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Leche vaca', 3.3, 4.8, 3.2)
#     #   @grupo13 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Yogurt', 3.8, 4.9, 3.8)
#     #   #Carnes y derivados
#     #   @grupo21 = Grupo_de_Alimento.new('Carnes y derivados', 'Cerdo', 21.5, 0.0, 6.3)
#     #   @grupo22 = Grupo_de_Alimento.new('Carnes y derivados', 'Ternera', 21.1, 0.0, 3.1)
#     #   @grupo23 = Grupo_de_Alimento.new('Carnes y derivados', 'Pollo', 20.6, 0.0, 5.6)
#     #   @listas.insertar_detras(@grupo11)
#     #   @listas.insertar_detras(@grupo12) 
#     #   @listas.insertar_delante(@grupo13)
#     #   @listas.insertar_delante(@grupo21)
#     #   @listas.insertar_delante(@grupo22)
      
#     # end 
    
    
#     # context "1) Se debe poder acceder a métodos de Módulo Enumerable" do
#     #   it "Método map"  do 
#     #     expect(@listas).to respond_to(:max)
#     #   end
#     #   it "Método collect"  do 
#     #     expect(@listas).to respond_to(:collect)
#     #   end
#     # end
    
#     # context "2) Probamos los métodos en nuestra lista de alimentos" do 
#     #   it "Se puede hacer un sort de nuestra lista de alimentos" do
#     #     x = @listas.sort 
#     #     expect(x).to eq([@grupo12,@grupo13,@grupo22,@grupo21,@grupo11]) 
        
#     #   end
#     #   it "Se puede hacer un max" do
#     #     x =  @listas.max
#     #     expect(x).to eq (@grupo11) 
#     #   end 
#     #   it "Se puede hacer un min" do
#     #     x =  @listas.min
#     #     expect(x).to eq (@grupo12) 
#     #   end 
#     # end
    
# end

# RSpec.describe Alimento do 
#     # before :all do
#     # #proteinas, glucidos, grasas
#     # @compota_manzana = Alimento.new("Compota de Manzana",[[6.7,6.5,6.8,6.9,7.0,7.1,6.9,6.9,6.9,6.7,6.9,7.3,7.0,7.0,7.2,7.1,6.8,7.2,7.3,7.0,6.8,6.7,6.8,6.7,6.9],
#     #                                                       [4.6,4.8,5.3,5.6,6.1,6.5,6.6,7.0,7.0,6.8,6.4,6.3,6.1,6.1,6.2,6.0,6.1,6.1,6.2,6.3,6.4,6.1,6.1,5.7,5.9]],
#     #                                                       0.2, 15.0,0.1)
#     # @glucosa = Alimento.new("Glucosa",[[4.9,5.3,5.9,6.7,7.2,7.6,8.0,8.2,8.2,8.4,8.3,8.3,8.0,7.5,7.1,6.8,6.8,6.9,6.8,6.3,6.2,6.3,6.2,6.3,6.1],
#     #                                   [6.3,5.4,5.6,5.7,6.5,7.4,7.9,7.4,7.7,7.9,7.9,7.8,7.8,7.8,8.0,8.5,9.4,10.8,10.5,9.1,8.9,8.3,7.7,7.6,7.5]],15.0,9.5,8.6)
#     # end 
#     # context "Aibc Funcional" do 
#     #   it "El alimento debe vector de indices glucémicos" do
#     #     expect(@compota_manzana.g).to eq([[6.7,6.5,6.8,6.9,7.0,7.1,6.9,6.9,6.9,6.7,6.9,7.3,7.0,7.0,7.2,7.1,6.8,7.2,7.3,7.0,6.8,6.7,6.8,6.7,6.9],
#     #                                                       [4.6,4.8,5.3,5.6,6.1,6.5,6.6,7.0,7.0,6.8,6.4,6.3,6.1,6.1,6.2,6.0,6.1,6.1,6.2,6.3,6.4,6.1,6.1,5.7,5.9]]) 
#     #   end
#     #   it "Debe exitir un método aibc" do 
#     #     expect(@compota_manzana).to respond_to(:aibc) 
#     #   end
#     #   it "El método aibc debe devolver un Array " do
#     #     expect(@compota_manzana.aibc).to match(an_instance_of(Array))
#     #   end
#     #   it "El método aibc debe realizar bien el cálculo de los aibc" do 
#     #     expect(@compota_manzana.aibc).to match_array([27.999999999999993,183.25])
#     #   end
#     #   it "Cálculo de ig" do 
#     #     expect((@ig = @compota_manzana.aibc.zip(@glucosa.aibc).map{ |e,u| (e / u) * 100 }).reduce(:+) / @compota_manzana.aibc.size).to eq(52.21619897959183)
#     #   end
#     # end   
  
# end

RSpec.describe Grupo_de_Alimento do 
    before :each do  
          @lista = Lista.new()
          #Huevos lácteos y helados 
          @grupo11 = Alimento.new('Huevo frito', 14.1, 0.0, 19.5)
          @grupo12 = Alimento.new('Leche vaca', 3.3, 4.8, 3.2)
          @grupo13 = Alimento.new('Yogurt', 3.8, 4.9, 3.8)
          #Carnes y derivados
          @grupo21 = Alimento.new('Cerdo', 21.5, 0.0, 6.3)
          @grupo22 = Alimento.new('Ternera', 21.1, 0.0, 3.1)
          @grupo23 = Alimento.new('Pollo', 20.6, 0.0, 5.6)
          #Pescados y mariscos
          @grupo31 = Alimento.new('Bacalao', 17.7, 0.0, 0.4)
          @grupo32 = Alimento.new('Atún', 21.5, 0.0, 15.5)
          @grupo33 = Alimento.new('Salmón', 19.9, 0.0, 13.6)
          #Alimentos grasos
          @grupo41 = Alimento.new('Aceite de oliva', 0.0, 0.2, 99.6)
          @grupo42 = Alimento.new('Mantequilla', 0.7, 0.0, 83.2)
          @grupo43 = Alimento.new('Chocolate', 5.3, 47.0, 30.0)
          #Alimentos ricos en carbohidratos
          @grupo51 = Alimento.new('Azúcar', 0.0, 99.8, 0.0)
          @grupo52 = Alimento.new('Arroz', 6.8, 77.7, 0.6)
          @grupo53 = Alimento.new('Lentejas', 23.5, 52.0, 1.4)
          @grupo54 = Alimento.new('Papas', 2.0, 15.4, 0.1)
          #Verduras y Hortalizas
          @grupo61 = Alimento.new('Tomate', 1.0, 3.5, 0.2)
          @grupo62 = Alimento.new('Cebolla', 1.3, 5.8, 0.3)
          @grupo63 = Alimento.new('Calabaza', 1.1, 4.8, 0.1)
          #Frutas
          @grupo71 = Alimento.new('Manzana', 0.3, 12.4, 0.4)
          @grupo72 = Alimento.new('Plátanos', 1.2, 21.4, 0.2)
          @grupo73 = Alimento.new('Pera', 0.5, 12.7, 0.3)
          @array = [ @grupo11,@grupo12,@grupo13,@grupo21,@grupo22,@grupo23,@grupo31,@grupo32,@grupo33, @grupo41,@grupo42,
                    @grupo43,@grupo51,@grupo52,@grupo53,@grupo54,@grupo61,@grupo62,@grupo63,@grupo71,@grupo72,@grupo73]
    end 
    
    context "1)Ordenación de valores energéticos" do
        it "Nuevo array con los elementos ordenados por su valor energético usando bucles for" do
            Benchmark.bm do |x| 
                x.report("for:"){
                swapped = true
                n = @array.size-1
                while swapped do
                  swapped = false
                  for i in 0..n-1
                    if @array[i].get_valor_energetico > @array[i+1].get_valor_energetico
                        @array[i], @array[i + 1] = @array[i + 1], @array[i]
                        swapped = true
                    end
                  end
                end
                # for i in 0..n
                #     puts @array[i].get_valor_energetico
                # end
                }
            end
        end  
        it "Nuevo array con los elementos ordenados por su valor energético usando el método each" do
                
                
        end
        it "Nuevo array con los elementos ordenados por su valor energético usando el método sort" do
            Benchmark.bm do |m| 
                m.report("sort:"){
                    runa = []
                    runa = @array.sort {|x,y| x.get_valor_energetico <=> y.get_valor_energetico}
                        runa.each{|i| @lista.insertar_detras(i)}
                        #@lista.to_s  
                        expect(@array).to match_array(runa)
                }
            end
        end  
    end
  
  
end






























