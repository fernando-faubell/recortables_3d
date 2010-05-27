namespace :nginx do  
  
#  desc "Inicia el servidor www nginx"
#  task :arrancar_nginx, :roles => :web do
#    set :user, "root"
#    run "/etc/init.d/nginx start"
#  end
#
#  desc "Detiene el servidor www nginx"
#  task :parar_nginx, :roles => :web do
#    set :user, "root"
#    run "/etc/init.d/nginx stop"
#  end
#
#  desc "Rearranca el servidor www nginx"
#  task :reiniciar_nginx, :roles => :web do
#    set :user, "root"
#    run "/etc/init.d/nginx restart"
#  end
#
#  # TODO: copia un fichero de configuración para el virtual host de nginx.
#  desc "Configura el vhost de nginx"
#  task :nginx_vhost, :roles => :web do
#    result = render_erb_template(File.dirname(__FILE__) + "/templates/nginx.vhost.conf.erb")
#    put result, "/tmp/nginx.vhost.conf"
#    sudo "mkdir -p /usr/local/nginx/conf/vhosts"
#    sudo "cp /tmp/nginx.vhost.conf /usr/local/nginx/conf/vhosts/#{application}.conf"
#    inform "You must edit nginx.conf to include the vhost config file."
#  end

end
  
