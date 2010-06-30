class Globo < Figura

  def parametros(globo)
    @ejecutable = RUTA_EJECUTABLES + "globoglx"
    #num_gajos num_U num_V textura.xxx anchoTexX anchoTexY despTexX despTexY red green blue RepiteH RepiteV edge_red edge_green edge_blue edge_size path_results End

    num_gajos, num_u, num_v = complejidad(globo.complejidad)

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
    aristas_tamanyo = grueso_aristas(globo.grosor_aristas)

    # Parametro para que genere las imagenes.
    modo = 10

    @parametros = " #{num_gajos} #{num_u} #{num_v} #{textura} #{ancho_tex_x}" <<
                  " #{ancho_tex_y} #{desp_tex_x} #{desp_tex_y}" <<
                  " #{red} #{green} #{blue} #{repite_h} #{repite_v}" <<
                  " #{edge_red} #{edge_green} #{edge_blue} #{aristas_tamanyo}" <<
                  " #{@directorio_temporal} #{modo}"
  end

  def complejidad(g_comp)
    case g_comp
      when "Muy sencillo"
        aux = [3,2,3]
      when "Sencillo"
        aux = [5,3,4]
      when "Moderado"
        aux = [6,4,6]
      when "Complejo"
        aux = [8,5,8]
      when "Muy complejo"
        aux = [10,8,10]
      else
        aux = [6,4,6]
    end
    return aux
  end
  private :complejidad

end
