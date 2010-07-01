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
#  nombre         :string(24)
#

class Recortable < ActiveRecord::Base

  #belongs_to :modelo
  has_many :imagenes

  #validates_presence_of :modelo_id
  
  after_save :genera_imagenes

  def self.lista_select_complejidad
    ["Muy sencillo", "Sencillo", "Moderado", "Complejo", "Muy complejo"]
  end

  def self.lista_select_grosor_aristas
    [[I18n.t(:muy_fino),"1"], [I18n.t(:normal), "2"], [I18n.t(:medio), "3"], [I18n.t(:grueso), "4"]]
  end



  def genera_imagenes

    puts self.modelo.nombre

    case self.modelo.nombre
    when "Globo"
      figura = Globo.new(self)
    when "Bolo"
      figura = Bolo.new(self)
    when "Esfera"
      figura = Esfera.new(self)
    when "Cono"
      figura = Cono.new(self)
    else
      figura = nil
    end

    if figura 
      self.imagenes.destroy_all  
      ruta = figura.genera

      if false && self.modelo.nombre != "Globo"
        i = self.imagenes.new
        i.imagen = File.new(ruta + "/image000.ppm")
        i.save

        i = self.imagenes.new
        i.imagen = File.new(ruta + "/image001.ppm")
        i.save

        i = self.imagenes.new
        i.imagen = File.new(ruta + "/image002.ppm")
        i.save

        i = self.imagenes.new
        i.imagen = File.new(ruta + "/image003.ppm")
        i.save

        i = self.imagenes.new
        i.imagen = File.new(ruta + "/image004.ppm")
        i.save
      else
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

      #FileUtils.rm_rf(ruta)
    end



  end

end


