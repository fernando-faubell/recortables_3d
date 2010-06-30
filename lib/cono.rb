class Cono < Figura

  def parametros(cono)
    @ejecutable = RUTA_EJECUTABLES + "conoglx"

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




    rojo, verde, azul = html_to_rgb cono.color_fondo

    aristas_rojo, aristas_verde, aristas_azul = html_to_rgb cono.color_aristas
    aristas_tamanyo = grueso_aristas(cono.grosor_aristas)

    path_resultados = @directorio_temporal
    modo = 10
    radio_cono = 1
    altura_cono = 2

    @parametros = " #{textura} #{ancho_textura} #{alto_textura} " <<
                  " #{ancho_textura_x} #{ancho_textura_y}" <<
                  " #{desplazamiento_textura_x} #{desplazamiento_textura_y}" <<
                  " #{repite_h} #{repite_v} #{rojo} #{verde} #{azul}" <<
                  " #{aristas_rojo} #{aristas_verde} #{aristas_azul}" <<
                  " #{aristas_tamanyo} #{path_resultados} #{modo}"
                  " #{radio_cono} #{altura_cono}"
  end

end
