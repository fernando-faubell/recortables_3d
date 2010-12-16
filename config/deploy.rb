$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
set :rvm_ruby_string, '1.8.7@recortables'        # Or whatever env you want it to run in.

require 'bundler/capistrano'


set :application, "recortables_3d"
set :repository,  "http://github.com/ferraniki/recortables_3d.git"

set :user, "fernando"
set :use_sudo, false

set :deploy_to, "/srv/www/vhosts/#{application}"

set :scm, :git
set :deploy_via, :copy

role :web, "lightocre.dlsi.uji.es"                   # Your HTTP server, Apache/etc
role :app, "lightocre.dlsi.uji.es"                   # This may be the same as your `Web` server
role :db,  "lightocre.dlsi.uji.es", :primary => true # This is where Rails migrations will run


# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end