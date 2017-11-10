require "spec_helper"
require "/home/ubuntu/workspace/p6/tdd/lib/tdd/Alimento.rb"
require "/home/ubuntu/workspace/p6/tdd/lib/tdd/Lista.rb"


RSpec.describe Alimento do
  
  before :each do
     @alimento1 = Alimento.new("Huevo frito",14.1,0.0,19.5)
     @alimento2 = Alimento.new("Leche vaca",3.3,4.8,3.2)
     @alimento3 = Alimento.new("Yogurt",3.8,4.9,3.8)
  end 
  describe "1) Expectativas de la clase" do
    it "Se instancia bien el objeto @alimento" do
      expect(@alimento1).to be_an_instance_of(Alimento)
    end 
    
    it "Has a version number" do
      expect(Tdd::VERSION).not_to be nil
    end
  
    it "Does something useful" do
      expect(true).to eq(true)
    end
  end 
  describe "2) Expectativas de los atributos de la clase Alimento" do
    
    it "Se almacena correctamente el atributo nombre" do
      expect(@alimento1.nombre).to eq('Huevo frito') 
    end
    
    it "Se almacena correctamente el atributo proteínas" do
      expect(@alimento1.proteinas).to eq(14.1) 
    end
    
    it "Se almacena correctamente el atributo glúcidos" do
      expect(@alimento1.glucidos).to eq(0.0) 
    end
    
    it "Se almacena correctamente el atributo grasas" do
      expect(@alimento1.grasas).to eq(19.5)
    end
  
  end 
  describe "3) Expectativas para los métodos getter de los atributos" do 
    it "Funciona el método  get_nombre " do
      expect(@alimento1.get_nombre).to eq('Huevo frito')
    end
    
    it "Funciona el método  get_proteínas" do
      expect(@alimento1.get_proteinas).to eq(14.1)
    end
    
    it "Funciona el método  get_glúcidos" do
      expect(@alimento1.get_glucidos).to eq(0.0)
    end
    
    it "Funciona el método  get_grasas" do
      expect(@alimento1.get_grasas).to eq(19.5)
    end
    
    it "Funciona el método  to_s" do
      expect(@alimento1.to_s).to eq("Huevo frito        14.1      0.0      19.5")
    end
    
    it "Funciona el método  get_valor_energetico" do
      expect(@alimento1.get_valor_energetico).to eq(231.9)
    end
  
  end
  describe "4) Expectaticvas para los tipos de atributos" do
    it "El tipo del atributo nombre debe ser un String" do
      expect(@alimento1.nombre).to be_a(String) 
    end 
    
    it "El tipo del atributo proteínas debe ser un Float" do
      expect(@alimento1.proteinas).to be_a(Float) 
    end
    
    it "El tipo del atributo glúcidos debe ser un Float" do
      expect(@alimento1.glucidos).to be_a(Float) 
    end
    
    it "El tipo del atributo grasas debe ser un Float" do
      expect(@alimento1.grasas).to be_a(Float) 
    end
  
  end
end

  
RSpec.describe Lista do

    before :all do
      @nodo1 = Nodo.new(5,nil,nil)
      @nodo2 = Nodo.new(8,nil,nil)
      @lista = Lista.new()
    end
    
    context "1) Nodo:" do
      it "Debe exitir un Nodo" do
        expect(Nodo).not_to be nil
      end
      it "Debe exitir el atributo next a nil " do
        expect(@nodo1.Next_).to be nil
      end
      it "Debe existir el atributo prev a nill" do
        expect(@nodo1.prev).to be nil
      end
    end
 
    context "2) Lista:" do
      it "Debe existir la clase Lista" do 
        expect(Lista).to be_a(Class)
      end 
      it "Debe exitir el atributo tamaño" do
        expect(@lista.tam).not_to be nil
      end
      it "El atributo tam debe ser un entero" do
        expect(@lista.tam).to be_a(Integer)  
      end
      it "Debe exitir el atributo cabeza" do
        expect(@lista.cabeza).to be nil
      end
      it "Debe existir el atributo cola" do
        expect(@lista.cola).to be nil
      end
      it "Se debe poder insertar un elemento en la lista" do
        @lista.insertar_delante(@nodo1)
        @lista.insertar_detras(@nodo2)
      end
      it "Se debe poder extraer un elemento por delante y por detrás" do
        expect(@lista.extraer_delante).to  eq(5)
        # expect(@lista.extraer_detras).to  eq(8)
      end
      
    end
end

RSpec.describe Grupo_de_Alimento do
    context "1) Herencia" do
      before :each do
        @grupo1 = Grupo_de_Alimento.new('Pescados y mariscos','Atún', 21.5, 0.0, 15.5)
      end    
          
      it "Un objeto grupo1 es una instancia de la clase Grupo_de_Alimento" do
        expect(@grupo1).to be_an_instance_of(Grupo_de_Alimento) 
      end
      it "Un objeto grupo1 es una instancia de la clase Object" do
        expect(@grupo1).not_to be_an_instance_of(Object) 
      end
      it "Un objeto grupo1 es una instancia de la clase BasicObject" do
        expect(@grupo1).not_to be_an_instance_of(BasicObject)
      end
      it "Un grupo1 es un Grupo_de_Alimento" do
        expect(@grupo1).to be_a_kind_of(Grupo_de_Alimento) 
      end
      it "Un grupo1 es un Object" do
        expect(@grupo1).to be_a_kind_of(Object) 
      end
      it "Un grupo1 es un BasicObject" do
        expect(@grupo1).to be_a_kind_of(BasicObject) 
      end
    end
    
    context "2) Tipo" do 
      before :each do
        @grupo1 = Grupo_de_Alimento.new('Pescados y mariscos','Atún', 21.5, 0.0, 15.5)
      end    
      
      it "Un objeto grupo1 responde al método grupo" do
         expect(@grupo1).to respond_to(:grupo) 
      end
      it "Un objeto grupo1 responde al método nombre por la herencia " do
         expect(@grupo1).to respond_to(:nombre)
      end
      it "Un objeto grupo1 responde a los métodos proteinas y glúcidos  por la herencia " do
         expect(@grupo1).to respond_to(:proteinas, :glucidos) 
      end
      it "un objeto grupo1 responde al método grasas" do
         expect(@grupo1).to respond_to('get_grasas') 
      end
      
    end 
    
    context "3) Listas de ALimentos por Grupo" do 
      before :all do 
        @listas = Lista.new()
        #Huevos lácteos y helados 
        @grupo11 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Huevo frito', 14.1, 0.0, 19.5)
        @grupo12 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Leche vaca', 3.3, 4.8, 3.2)
        @grupo13 = Grupo_de_Alimento.new('Huevos, lácteos y helados', 'Yogurt', 3.8, 4.9, 3.8)
        #Carnes y derivados
        @grupo21 = Grupo_de_Alimento.new('Carnes y derivados', 'Cerdo', 21.5, 0.0, 6.3)
        @grupo22 = Grupo_de_Alimento.new('Carnes y derivados', 'Ternera', 21.1, 0.0, 3.1)
        @grupo23 = Grupo_de_Alimento.new('Carnes y derivados', 'Pollo', 20.6, 0.0, 5.6)
        #Pescados y mariscos
        @grupo31 = Grupo_de_Alimento.new('Pescados y mariscos', 'Bacalao', 17.7, 0.0, 0.4)
        @grupo32 = Grupo_de_Alimento.new('Pescados y mariscos', 'Atún', 21.5, 0.0, 15.5)
        @grupo33 = Grupo_de_Alimento.new('Pescados y mariscos', 'Salmón', 19.9, 0.0, 13.6)
        #Alimentos grasos
        @grupo41 = Grupo_de_Alimento.new('Alimentos grasos', 'Aceite de oliva', 0.0, 0.2, 99.6)
        @grupo42 = Grupo_de_Alimento.new('Alimentos grasos', 'Mantequilla', 0.7, 0.0, 83.2)
        @grupo43 = Grupo_de_Alimento.new('Alimentos grasos', 'Chocolate', 5.3, 47.0, 30.0)
        #Alimentos ricos en carbohidratos
        @grupo51 = Grupo_de_Alimento.new('Alimentos ricos en carbohidratos', 'Azúcar', 0.0, 99.8, 0.0)
        @grupo52 = Grupo_de_Alimento.new('Alimentos ricos en carbohidratos', 'Arroz', 6.8, 77.7, 0.6)
        @grupo53 = Grupo_de_Alimento.new('Alimentos ricos en carbohidratos', 'Lentejas', 23.5, 52.0, 1.4)
        @grupo54 = Grupo_de_Alimento.new('Alimentos ricos en carbohidratos', 'Papas', 2.0, 15.4, 0.1)
        #Verduras y Hortalizas
        @grupo61 = Grupo_de_Alimento.new('Verduras y Hortalizas', 'Tomate', 1.0, 3.5, 0.2)
        @grupo62 = Grupo_de_Alimento.new('Verduras y Hortalizas', 'Cebolla', 1.3, 5.8, 0.3)
        @grupo63 = Grupo_de_Alimento.new('Verduras y Hortalizas', 'Calabaza', 1.1, 4.8, 0.1)
        #Frutas
        @grupo71 = Grupo_de_Alimento.new('Frutas', 'Manzana', 0.3, 12.4, 0.4)
        @grupo72 = Grupo_de_Alimento.new('Frutas', 'Plátanos', 1.2, 21.4, 0.2)
        @grupo73 = Grupo_de_Alimento.new('Frutas', 'Pera', 0.5, 12.7, 0.3)
        
        # @listas.insertar_detras(@grupo11)
        # @listas.insertar_detras(@grupo12)
        # @listas.insertar_detras(@grupo13)
        # @listas.insertar_detras(@grupo21)
        # @listas.insertar_detras(@grupo22)
        # @listas.insertar_detras(@grupo23)
        # @listas.insertar_detras(@grupo31)
        # @listas.insertar_detras(@grupo32)
        # @listas.insertar_detras(@grupo33)
      end
      
      it "El grupo Huevos lácteos y helados, Carnes y derivados, Pescados y mariscos" do
        puts @listas.to_s
      end
      
      
    end

  
end


