namespace :sqlite do
  
#  task :create_database_yml do
#    run "cp #{release_path}/config/capistrano/cap_database.yml #{release_path}/config/database.yml"  
#  end
#  before "deploy:migrate", "sqlite:create_database_yml"
#  
#  desc "Crea un link en db/ para la base de datos en sqlite3"
#  task :link_database do  
#    run "mkdir -p #{deploy_to}/shared/system/database"    
#    run "touch #{deploy_to}/shared/system/database/production.sqlite3"
#    run "ln -s #{deploy_to}/shared/system/database/production.sqlite3 #{release_path}/db/production.sqlite3"
#  end
#  after "sqlite:create_database_yml", "sqlite:link_database"
end