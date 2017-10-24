require "spec_helper"
#equire "lib/tdd/Alimento.rb"

RSpec.describe Alimento do
  
  before :each do
    @alimento1 = Alimento.new("Huevo frito")
  end 
  
    it "has a version number" do
      expect(Tdd::VERSION).not_to be nil
    end
  
    it "does something useful" do
      expect(true).to eq(true)
    end
  
  describe "# Atributos de la clase Alimento" do
    
    it "Se almacena correctamente el atributo nombre" do
      expect(@alimento1.nombre).to eq('Huevo frito') 
    end
    
  end
end
