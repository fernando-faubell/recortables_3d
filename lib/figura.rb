class Figura

  EJECUTABLE = "export DISPLAY=:0 && /home/recortables/bin/main"

  def initialize(figura)
    @directorio_temporal = directorio_aleatorio
    #parametros(nombre_figura)
    genera_fotos(figura)
    convierte
  end

  def directorio_temporal
    @directorio_temporal
  end

  def html_to_rgb(color_html)
    matcher = /^#(.{2})(.{2})(.{2})$/.match(color_html)
    rojo  = sprintf("%0.03f", matcher[1].hex.to_f / 255)
    verde = sprintf("%0.03f", matcher[2].hex.to_f / 255)
    azul  = sprintf("%0.03f", matcher[3].hex.to_f / 255)
    return [rojo, verde, azul]
  end
  protected :html_to_rgb



  def genera_fotos(figura)

    case figura.nombre
    when "Bolo16"
      `#{EJECUTABLE} bolo no_textura 512 512  1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0  0.0 0.0 0.0   3.0 #{@directorio_temporal} 10 4 4`
    when "Bolo35"
      `#{EJECUTABLE} bolo no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 5 7`
    when "Bolo70"
      `#{EJECUTABLE} bolo no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 7 10`
    when "Bolo154"
      `#{EJECUTABLE} bolo no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 11 14`
    when "Bolo340"
      `#{EJECUTABLE} bolo no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 17 21`
    when "Cono_r_h"
      `#{EJECUTABLE} cono no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 2 1`
    when "Cono_r_2h"
      `#{EJECUTABLE} cono no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 1 1`
    when "Cono_2r_h"
      `#{EJECUTABLE} cono no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 1 2`
    when "Cono_4r_h"
      `#{EJECUTABLE} cono no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 1 4`
    when "Esfera20"
      `#{EJECUTABLE} esfera no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 1 0`
    when "Esfera80"
      `#{EJECUTABLE} esfera no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 1 1`
    when "Esfera320"
      `#{EJECUTABLE} esfera no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 1 2`
    when "Esfera222"
      `#{EJECUTABLE} esfera no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 #{@directorio_temporal} 10 1 3`
    end    
  end

#  def genera_fotos
#    puts "#{@ejecutable}#{@parametros}"
#    `#{@ejecutable}#{@parametros}`
#    convierte
#    return @directorio_temporal
#  end


#  def grueso_aristas(valor)
#    aux = 1.0
#    case valor
#    when "1"
#       aux = 0.5
#    when "2"
#       aux = 1.0
#    when "3"
#       aux = 1.5
#    when "4"
#       aux = 2.0
#    end
#    return aux
#  end


  def directorio_aleatorio
     # Genera una directorio de nombre aleatorio en tmp.
     dir_aleatorio = ""; 8.times{dir_aleatorio  << (65 + rand(25)).chr}
     directorio = RAILS_ROOT + "/tmp/" + dir_aleatorio
     FileUtils.mkdir(directorio)
     directorio
  end
  private :directorio_aleatorio

  def convierte
    #TODO: Rehacer...
    `convert #{@directorio_temporal}/image000.ppm #{@directorio_temporal}/image000.jpg`
    `convert #{@directorio_temporal}/image001.ppm #{@directorio_temporal}/image001.jpg`
    `convert #{@directorio_temporal}/image002.ppm #{@directorio_temporal}/image002.jpg`
    `convert #{@directorio_temporal}/image003.ppm #{@directorio_temporal}/image003.jpg`
    `convert #{@directorio_temporal}/image004.ppm #{@directorio_temporal}/image004.jpg`
  end
  protected :convierte


end


#
#Cono, para obtener el libro (solo cambia el modo, tercer parametro por el final):
#
#./main cono no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 20 2 1
#./main cono no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 20 1 1
#./main cono no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 20 1 2
#./main cono no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 20 1 4
#
#
#Y para el libro:
#
#./main esfera no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 20 1 0 ../modelos/esfera20/ ../modelos/esfera20/book.data
#./main esfera no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 20 1 1 ../modelos/esfera80/ ../modelos/esfera80/book.data
#./main esfera no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 20 1 2 ../modelos/esfera320/ ../modelos/esfera320/book.data
#./main esfera no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 20 1 3 ../modelos/esfera1280/ ../modelos/esfera1280/book.data
#
#
#Y para el bolo libro:
#
#./main bolo no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 10 4 4 ../modelos/bolo16/ ../modelos/bolo16/book.data
#./main bolo no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 10 5 7 ../modelos/bolo35/ ../modelos/bolo35/book.data
#./main bolo no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 10 7 10 ../modelos/bolo70/ ../modelos/bolo70/book.data
#./main bolo no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 10 11 14 ../modelos/bolo154/ ../modelos/bolo154/book.data
#./main bolo no_textura 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 3.0 /tmp 10 17 21 ../modelos/bolo340/ ../modelos/bolo340/book.data










