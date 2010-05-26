class Cono

  def initialize(cono)
    dir_aleatorio = ""; 8.times{dir_aleatorio  << (65 + rand(25)).chr}
    @directorio_temporal = RAILS_ROOT + "/tmp/" + dir_aleatorio
    FileUtils.mkdir(@directorio_temporal)
    @ejecutable = "/home/recortables/bin/conoglx"
    parametros(cono)
  end


  def genera
    puts "@@@@@@@@@@@@@@@@@#{@ejecutable}#{@parametros}"
    `#{@ejecutable}#{@parametros}`
    return @directorio_temporal
  end

  def parametros(cono)

    #main textura.rgb ancho alto anchoTexX anchoTexY despTexX despTexY RepiteH RepiteV red green blue edge_red edge_green edge_blue edge_size path_results Mode radio_cono altura_cono
    #Example: main google_logo.rgb 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 1.0 /tmp 0 1 2

    textura = "no_textura"
    ancho_textura = 512
    alto_textura = 512   
    ancho_textura_x = 1.0
    ancho_textura_y = 1.0
    desplazamiento_textura_x = 0.0
    desplazamiento_textura_y = 0.0
    repite_h = 0
    repite_v = 0
    rojo = 1.0
    verde = 1.0
    azul = 1.0
    aristas_rojo = 0.0
    aristas_verde = 0.0
    aristas_azul = 0.0
    aristas_tamanyo = 1
    path_resultados = @directorio_temporal
    modo = 0
    radio_cono = 1
    altura_cono = 2
    @parametros = " #{textura} #{ancho_textura} #{alto_textura} #{ancho_textura_x}
      #{ancho_textura_y} #{desplazamiento_textura_x} #{desplazamiento_textura_y}
      #{repite_h} #{repite_v} #{rojo} #{verde} #{azul}
      #{aristas_rojo} #{aristas_verde} #{aristas_azul} #{aristas_tamanyo}
      #{path_resultados} #{modo} #{radio_cono} #{altura_cono}"
  end

  def html_to_rgb(color_html)
    matcher = /^#(.{2})(.{2})(.{2})$/.match(color_html)
    rojo  = sprintf("%0.03f", matcher[1].hex.to_f / 255)
    verde = sprintf("%0.03f", matcher[2].hex.to_f / 255)
    azul  = sprintf("%0.03f", matcher[3].hex.to_f / 255)
    return [rojo, verde, azul]
  end

end
