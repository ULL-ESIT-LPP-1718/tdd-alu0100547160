require "spec_helper"
#equire "lib/tdd/Alimento.rb"

RSpec.describe Alimento do
  
  before :each do
     @alimento1 = Alimento.new("Huevo frito",14.1,0.0,19.5)
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
  
  end
 
    
  
end
