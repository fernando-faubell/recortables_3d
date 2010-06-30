class Figura

  RUTA_EJECUTABLES = "/home/recortables/bin/"

  def initialize(figura)
    @directorio_temporal = directorio_aleatorio
    parametros(figura)
  end

  def genera
    puts "#{@ejecutable}#{@parametros}"
    `#{@ejecutable}#{@parametros}`
    convierte
    return @directorio_temporal
  end

  def html_to_rgb(color_html)
    matcher = /^#(.{2})(.{2})(.{2})$/.match(color_html)
    rojo  = sprintf("%0.03f", matcher[1].hex.to_f / 255)
    verde = sprintf("%0.03f", matcher[2].hex.to_f / 255)
    azul  = sprintf("%0.03f", matcher[3].hex.to_f / 255)
    return [rojo, verde, azul]
  end
  protected :html_to_rgb

  def grueso_aristas(valor)
    aux = 1.0
    case valor
    when "1"
       aux = 0.5
    when "2"
       aux = 1.0
    when "3"
       aux = 1.5
    when "4"
       aux = 2.0
    end
    return aux
  end


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