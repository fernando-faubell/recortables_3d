class Bolo < Figura

  def parametros(bolo)
    @ejecutable = RUTA_EJECUTABLES + "bologlx"

    #main textura.rgb ancho alto anchoTexX anchoTexY despTexX despTexY RepiteH RepiteV red green blue edge_red edge_green edge_blue edge_size path_results Mode radio_cono altura_cono
    #Example: main google_logo.rgb 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 1.0 /tmp 0 1 2
    #/home/recortables/bin/bologlx no_textura 512 512 1.0 1.0 0.0 0.0 0 0 0.5 1.0 1.0 0.0 0.0 0.0 1.0 . 10 8 8

    # Textura
    textura = "no_textura"
    ancho_textura = 512
    alto_textura = 512   
    ancho_textura_x = 1.0
    ancho_textura_y = 1.0
    desplazamiento_textura_x = 0.0
    desplazamiento_textura_y = 0.0
    repite_h = 0
    repite_v = 0

    # Fondo
    rojo, verde, azul = html_to_rgb bolo.color_fondo
    # Aristas
    aristas_rojo, aristas_verde, aristas_azul = html_to_rgb bolo.color_aristas
    aristas_tamanyo = grueso_aristas(bolo.grosor_aristas)
    
    path_resultados = @directorio_temporal

    modo = 10

    # Especificos
    radio_bolo = 8
    altura_bolo = 8


    @parametros = " #{textura} #{ancho_textura} #{alto_textura} #{ancho_textura_x}" <<
                  " #{ancho_textura_y} #{desplazamiento_textura_x}" <<
                  " #{desplazamiento_textura_y} #{repite_h} #{repite_v}" <<
                  " #{rojo} #{verde} #{azul} #{aristas_rojo} #{aristas_verde}"<<
                  " #{aristas_azul} #{aristas_tamanyo} #{path_resultados}" <<
                  " #{modo} #{radio_bolo} #{altura_bolo}"
  end

end
