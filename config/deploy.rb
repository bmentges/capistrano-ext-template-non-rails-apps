set :stages, %w(dev staging prod)
set :default_stage, "dev"
require 'capistrano/ext/multistage'

set :application, "super_django"
set :user, "www-data"
set :group, "www-data"
 
set :scm, :none
set :repository, "."

set :deploy_to, "/var/www/#{application}"
set :deploy_via, :copy
set :deploy_env, 'dev'

set :copy_dir, "/tmp"
set :copy_remote_dir, "/tmp"
set :copy_exclude, [ ".git", "puppet", "**/*.log" ]
