class Globo

  def initialize(globo)
    dir_aleatorio = ""; 8.times{dir_aleatorio  << (65 + rand(25)).chr}
    @directorio_temporal = RAILS_ROOT + "/tmp/" + dir_aleatorio
    FileUtils.mkdir(@directorio_temporal)
    rutas
    parametros(globo)
  end


  def genera
    puts "@@@@@@@@@@@@@@@@@#{@ejecutable}#{@parametros}"
    `#{@ejecutable}#{@parametros}`
    return @directorio_temporal
  end

  def parametros(globo)
    #num_gajos num_U num_V textura.xxx anchoTexX anchoTexY despTexX despTexY red green blue RepiteH RepiteV edge_red edge_green edge_blue edge_size path_results End

    num_gajos = 6
    num_u = 4
    num_v = 6

    # Parametros de textura
    textura = "no_textura" #RAILS_ROOT + "/public/images/google_logo.jpg"
    ancho_tex_x = 1.0
    ancho_tex_y = 1.0
    desp_tex_x = 0.0
    desp_tex_y = 0.0
    repite_h = 0
    repite_v = 0
 
    # Colores de fondo y aristas.
    red, green, blue = html_to_rgb globo.color_fondo
    edge_red, edge_green, edge_blue = html_to_rgb globo.color_aristas

    # Grosor de las aristas.
    edge_size = 1.0

    # Parametro para que genere las imagenes.
    modo = 10

    @parametros = " #{num_gajos} #{num_u} #{num_v} #{textura} #{ancho_tex_x} #{ancho_tex_y} #{desp_tex_x} #{desp_tex_y} #{red} #{green} #{blue} #{repite_h} #{repite_v} #{edge_red} #{edge_green} #{edge_blue} #{edge_size} #{@directorio_temporal} #{modo}"
  end

  def rutas
    #@ejecutable = RAILS_ROOT + "/lib/mainglx"
    @ejecutable = "/home/recortables/bin/esferaglx"
  end
  private :rutas


  def html_to_rgb(color_html)
    matcher = /^#(.{2})(.{2})(.{2})$/.match(color_html)
    rojo  = sprintf("%0.03f", matcher[1].hex.to_f / 255)
    verde = sprintf("%0.03f", matcher[2].hex.to_f / 255)
    azul  = sprintf("%0.03f", matcher[3].hex.to_f / 255)
    return [rojo, verde, azul]
  end

end
