class Recortable < ActiveRecord::Base

  def self.lista_select_modelos
    ["Globo"]
  end

  def self.lista_select_complejidad
    ["Muy sencillo", "Sencillo", "Moderado", "Complejo", "Muy complejo"]
  end

end
