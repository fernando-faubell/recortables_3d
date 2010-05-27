class Capistrano::Configuration

  ##
  # Print an informative message with asterisks.

  def inform(message)
    puts "#{'*' * (message.length + 4)}"
    puts "* #{message} *"
    puts "#{'*' * (message.length + 4)}"
  end

  ##
  # Read a file and evaluate it as an ERB template.
  # Path is relative to this file's directory.

  def render_erb_template(filename)
    template = File.read(filename)
    result   = ERB.new(template).result(binding)
  end

  ##
  # Run a command and return the result as a string.
  #
  # TODO May not work properly on multiple servers.

  def run_and_return(cmd)
    output = []
    run cmd do |ch, st, data|
      output << data
    end
    return output.to_s
  end

end

namespace :deploy do

  desc "Reiniciar aplicación"
  task :restart do
    # Por utilizar Passenger (mod_rails)
    run "touch #{current_path}/tmp/restart.txt"
    inform "Passenger reiniciado."
  end
  desc "Iniciar aplicación"
  task :start do
    # Por utilizar Passenger (mod_rails)
    run "touch #{current_path}/tmp/restart.txt"
    inform "Passenger reiniciado."
  end

  after "deploy:symlink", "deploy:migrate"

end



namespace :recortables_recipes do

  desc "Copy config files"
  task :copy_config_files do
    run "cp #{shared_path}/config/* #{release_path}/config/"
    inform "Ficheros de configuración copiados a la aplicación."
  end
  after "recortables_recipes:create_shared_config_files", "recortables_recipes:copy_config_files"


  desc "Crea el directorio shared/config para los ficheros de configuración de la aplicación."
  task :create_shared_config do
    run "mkdir -p #{shared_path}/config"
    inform "Creado directorio de configuración."
  end
  after "deploy:setup", "recortables_recipes:create_shared_config"


  desc "Crea los ficheros de shared/config"
  task :create_shared_config_files do
    contents = render_erb_template(File.dirname(__FILE__) + "/templates/database.yml")
    put contents, "#{shared_path}/config/database.yml"
    inform "Fichero database.yml copiado en directorio compartido."
  end
  after "deploy:update_code", "recortables_recipes:create_shared_config_files"



end