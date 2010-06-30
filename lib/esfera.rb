class Esfera < Figura

  def parametros(esfera)

    @ejecutable = RUTA_EJECUTABLES + "esferaglx"

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
    red, green, blue = html_to_rgb esfera.color_fondo
    edge_red, edge_green, edge_blue = html_to_rgb esfera.color_aristas

    # Grosor de las aristas.
    aristas_tamanyo = grueso_aristas(esfera.grosor_aristas)

    # Parametro para que genere las imagenes.
    modo = 10

    @parametros = " #{num_gajos} #{num_u} #{num_v} #{textura} #{ancho_tex_x}" <<
                  " #{ancho_tex_y} #{desp_tex_x} #{desp_tex_y} #{red} #{green}" <<
                  "  #{blue} #{repite_h} #{repite_v} #{edge_red} #{edge_green}" <<
                  "  #{edge_blue} #{aristas_tamanyo} #{@directorio_temporal} #{modo}"
  end

end
