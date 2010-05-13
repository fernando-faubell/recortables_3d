class Recortable < ActiveRecord::Base

  belongs_to :modelo
  has_many :imagenes

  after_save :genera_imagenes

  def self.lista_select_complejidad
    ["Muy sencillo", "Sencillo", "Moderado", "Complejo", "Muy complejo"]
  end

  def genera_imagenes
    self.imagenes.destroy_all
    g = Globo.new(self)
    ruta = g.genera
    i = self.imagenes.new
    i.imagen = File.new(ruta + "/image000.jpg")
    i.save

    i = self.imagenes.new
    i.imagen = File.new(ruta + "/image001.jpg")
    i.save
    
    i = self.imagenes.new
    i.imagen = File.new(ruta + "/image002.jpg")
    i.save

    i = self.imagenes.new
    i.imagen = File.new(ruta + "/image003.jpg")
    i.save

    i = self.imagenes.new
    i.imagen = File.new(ruta + "/image004.jpg")
    i.save

    FileUtils.rm_rf(ruta)



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

