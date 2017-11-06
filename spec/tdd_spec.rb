require "spec_helper"
#equire "lib/tdd/Alimento.rb"

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
  context ") Los prev y next deben ser nulos" do
    it "Debe exitir un nodo con su valor, su siguiente y su previo " do
      @nodo1 = Nodo.new(1,nil,nil)
      expect(@nodo1.next).to be nil
      expect(@nodo1.prev).to be nil
    end
  end

end