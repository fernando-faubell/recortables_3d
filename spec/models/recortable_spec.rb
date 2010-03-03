require File.dirname(__FILE__) + '/../spec_helper'

describe Recortable do

  it "should be valid" do
    Recortable.new.should be_valid
  end

  it "debería ofrecer modelos para seleccionar" do
    Recortable.lista_select_modelos.should_not be_empty
  end

  it "debería ofrecer 5 niveles de complejidad" do
    Recortable.lista_select_complejidad.should have(5).items
  end
  
end


# == Schema Information
#
# Table name: recortables
#
#  id             :integer(4)      not null, primary key
#  modelo_id      :integer(4)
#  complejidad    :string(255)
#  color_fondo    :string(255)
#  color_aristas  :string(255)
#  grosor_aristas :string(255)
#  textura        :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

