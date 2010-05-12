class Globo

  def initialize
    dir_aleatorio = ""; 8.times{dir_aleatorio  << (65 + rand(25)).chr}

    @ruta = RAILS_ROOT + "/tmp/" + dir_aleatorio
    FileUtils.mkdir(@ruta)
    puts @ruta
    
    rutas

  end


  def genera
    puts "#{@ejecutable}#{@parametros}"
    `#{@ejecutable}#{@parametros}`
    return @ruta
  end


  def rutas
    @ejecutable = RAILS_ROOT + "/lib/mainglx"

     #num_gajos num_U num_V textura.xxx anchoTexX anchoTexY despTexX despTexY red green blue RepiteH RepiteV edge_red edge_green edge_blue edge_size path_results End


    @parametros = " 6 4 6 #{RAILS_ROOT + '/public/images/google_logo.jpg'} 1.0 1.0 0.0 0.0 0.5 1.0 1.0 0 0 0.0 0.0 0.0 1.0 #{@ruta} 10"
  end
  private :rutas

end
