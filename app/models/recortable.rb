class Recortable < ActiveRecord::Base

  def self.lista_select_modelos
    #TODO: Buscar la forma de traducir los modelos.
    #[[I18n.t(:globo),1]]
    ["Globo"]
  end

  def self.lista_select_complejidad
    ["Muy sencillo", "Sencillo", "Moderado", "Complejo", "Muy complejo"]
  end

end
