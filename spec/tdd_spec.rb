require "spec_helper"
#equire "lib/tdd/Alimento.rb"

RSpec.describe Alimento do
  
  before :each do
    @alimento1 = Alimento.new("Huevo frito",14.1,0.0)
  end 
    it "Se instancia bien el objeto @alimento" do
      expect(@alimento1).to be_an_instance_of(Alimento)
    end 
    
    it "Has a version number" do
      expect(Tdd::VERSION).not_to be nil
    end
  
    it "Does something useful" do
      expect(true).to eq(true)
    end
  
  describe "# Atributos de la clase Alimento" do
    
    it "Se almacena correctamente el atributo nombre" do
      expect(@alimento1.nombre).to eq('Huevo frito') 
    end
    
    it "Se almacena correctamente el atributo proteínas" do
      expect(@alimento1.proteinas).to eq(14.1) 
    end
    
    it "Se almacena correctamente el atributo glúcidos" do
      expect(@alimento1.glucidos).to eq(0.0) 
    end
    
    
  end
end
