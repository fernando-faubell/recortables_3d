module RecortablesHelper

  def lista_imagenes_recortable
    array_imagenes = []

    if @recortable.nombre.blank?
      array_imagenes << "esfera320.jpg"
      array_imagenes << "esfera320.jpg"
      array_imagenes << "esfera320.jpg"
      array_imagenes << "esfera320.jpg"
    elsif @recortable.nombre && @recortable.imagenes.empty?
      #Personalizada
      case @recortable.nombre
        when "Bolo16"
        array_imagenes << "bolo16.jpg"
        when "Bolo35"
        array_imagenes << "bolo35.jpg"
        when "Bolo70"
         array_imagenes << "bolo70.jpg"
        when "Bolo154"
          array_imagenes << "bolo154.jpg"
        when "Bolo340"
          array_imagenes << "bolo340.jpg"
        when "Cono_r_h"
          array_imagenes << "cono_r_h.jpg"
        when "Cono_r_2h"
          array_imagenes << "cono_r_2h.jpg"
        when "Cono_2r_h"
          array_imagenes << "cono_2r_h.jpg"
        when "Cono_4r_h"
          array_imagenes << "cono_4r_h.jpg"
        when "Esfera20"
          array_imagenes << "esfera20.jpg"
        when "Esfera80"
          array_imagenes << "esfera80.jpg"
        when "Esfera320"
          array_imagenes << "esfera320.jpg"
          break;
        else
          array_imagenes << "esfera320.jpg"
      end
    else
      # Imagenes del recortable.
      array_imagenes = @recortable.imagenes.map{|k| k.imagen.url}
    end
  end
end

