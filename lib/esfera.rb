class Esfera < Figura

  def parametros(esfera)

    @ejecutable = RUTA_EJECUTABLES + "esferaglx"

    # esferaglx textura.rgb ancho alto anchoTexX anchoTexY despTexX despTexY RepiteH RepiteV red green blue edge_red edge_green edge_blue edge_size path_results Mode radio nivel(0-3)
    # esferaglx google_logo.rgb 512 512 1.0 1.0 0.0 0.0 0 0 1.0 1.0 1.0 0.0 0.0 0.0 1.0 /tmp 0 1 1
    ancho = 512
    alto = 512

    # Parametros de textura
    textura = "no_textura" #RAILS_ROOT + "/public/images/google_logo.jpg"
    ancho_tex_x = 1.0
    ancho_tex_y = 1.0
    desp_tex_x = 0.0
    desp_tex_y = 0.0
    repite_h = 0
    repite_v = 0
 
    # Colores de fondo y aristas.
    red, green, blue = html_to_rgb esfera.color_fondo
    edge_red, edge_green, edge_blue = html_to_rgb esfera.color_aristas

    # Grosor de las aristas.
    aristas_tamanyo = grueso_aristas(esfera.grosor_aristas)

    # Parametro para que genere las imagenes.
    modo = 10

    radio = 1
    nivel = 1
    @parametros = " #{textura} #{ancho} #{alto} #{ancho_tex_x}" <<
                  " #{ancho_tex_y} #{desp_tex_x} #{desp_tex_y} #{repite_h} #{repite_v} #{red} #{green}" <<
                  " #{blue} #{edge_red} #{edge_green}" <<
                  " #{edge_blue} #{aristas_tamanyo} #{@directorio_temporal} #{modo} #{radio} #{nivel}"
  end

end
