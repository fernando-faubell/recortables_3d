class Globo

  def initialize
    rutas

  end


  def genera
    puts "#{@ejecutable}#{@parametros}"
    `#{@ejecutable}#{@parametros}`
  end


  def rutas
    @ejecutable = RAILS_ROOT + "/lib/mainglx"
    @parametros = " 12 4 12 #{RAILS_ROOT + '/public/images/google_logo.jpg'} 1.0 1.0 0.0 0.0 1.0 1.0 1.0 0 0 0.0 0.0 0.0 1.0 #{RAILS_ROOT + '/public'} 10"
  end
  private :rutas

end
