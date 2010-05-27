desc "Muestra las gemas instaladas"
task :show_gems do
  run "gem list"
end

desc "Muestra las gemas instaladas, limpiamente"
task :stream_gems do
  stream "gem list"
end

desc "Actualiza gemas"
task :update_gems do
  sudo "gem update"
end

desc "Restart web server"
task :restart_web do
  sudo "/etc/init.d/apache2 restart"
end
after "stream_gems", "restart_web"
# before
