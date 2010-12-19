# == Schema Information
#
# Table name: recortables
#
#  id                   :integer(4)      not null, primary key
#  modelo_id            :integer(4)
#  complejidad          :string(255)
#  color_fondo          :string(255)
#  color_aristas        :string(255)
#  grosor_aristas       :string(255)
#  textura              :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  nombre               :string(24)
#  textura_file_name    :string(255)
#  textura_content_type :string(255)
#  textura_file_size    :integer(4)
#  textura_updated_at   :datetime
#

class Recortable < ActiveRecord::Base

  #belongs_to :modelo
  has_many :imagenes

  validates_presence_of :nombre
  
  after_save :genera_imagenes

  has_attached_file :textura,
    :styles => { :previo => "512x512!", :final => "2048x2048!"},
    :convert_options => {:all => "-depth 8"},
    :format => {:all =>"rgb"},
    :processors => [:transformaciones]

#:current_geometry, :target_geometry, :format, :whiny, :convert_options, :source_file_options


  def self.lista_select_complejidad
    ["Muy sencillo", "Sencillo", "Moderado", "Complejo", "Muy complejo"]
  end

  def self.lista_select_grosor_aristas
    [[I18n.t(:muy_fino),"1"], [I18n.t(:normal), "2"], [I18n.t(:medio), "3"], [I18n.t(:grueso), "4"]]
  end



  def genera_imagenes

    figura = Figura.new(self)

    if figura

      self.imagenes.destroy_all
      ruta = figura.directorio_temporal

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

    end
  end
end


