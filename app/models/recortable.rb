class Recortable < ActiveRecord::Base

  belongs_to :modelo


  def self.lista_select_complejidad
    ["Muy sencillo", "Sencillo", "Moderado", "Complejo", "Muy complejo"]
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

