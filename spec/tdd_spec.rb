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
  
  describe "# Almacenamiento de Cantidad de Proteínas" do
    it "Se almacena correctamente el atributo Proteínas" do
      expect(@alimento1.nombre).to eq() 
    end
    
  end
end
