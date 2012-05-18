load 'deploy' if respond_to?(:namespace) # cap2 differentiator

Dir['vendor/gems/*/recipes/*.rb','vendor/plugins/*/recipes/*.rb'].each { |plugin| load(plugin) }

load 'config/deploy' # remove this line to skip loading any of the default tasks

set :synchronous_connect, true
default_run_options[:pty] = true

set :keep_releases, 3
after "deploy:restart", "deploy:cleanup" 

namespace :deploy do
    task :finalize_update do
        # essa task assume que eh um projeto rails e faz
        # symlink do public pro shared, e do logs
        # coisa que nao queremos
    end

    # :restart redefinido para nao chamar o reaper
    desc "Tira a configuracao especifica do rails de restart, podemos colocar a nossa aqui"
    task :restart, :roles => :app do
        # aqui voce pode configurar o seu restart
        # run /var/www/:application/restart/meu-script-de-restart.sh
    end
end
