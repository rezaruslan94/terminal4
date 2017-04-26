# config valid only for current version of Capistrano

set :application, 'furnilac_app_reza'
set :repo_url, 'git@bitbucket.org:rezaruslan94/furnilac_app_reza.git'

set :deploy_to, '/home/furnilac/application/'

set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

set :rvm_type, :auto
set :rvm_ruby_version, '2.3.1'



namespace :deploy do

  desc 'Runs rake db:migrate if migrations are set'
  task :migrate => [:set_rails_env] do
    on fetch(:migration_servers) do
      conditionally_migrate = fetch(:conditionally_migrate)
      info '[deploy:migrate] Checking changes in db' if conditionally_migrate
      if conditionally_migrate && test(:diff, "-qr #{release_path}/db #{current_path}/db")
        info '[deploy:migrate] Skip `deploy:migrate` (nothing changed in db)'
      else
        info '[deploy:migrate] Run `rake db:migrate`'
        # NOTE: We access instance variable since the accessor was only added recently. Once capistrano-rails depends on rake 11+, we can revert the following line
        invoke :'deploy:migrating' unless Rake::Task[:'deploy:migrating'].instance_variable_get(:@already_invoked)
      end
    end
  end

  desc 'Runs rake db:migrate'
  task migrating: [:set_rails_env] do
    on fetch(:migration_servers) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'db:migrate'
        end
      end
    end
  end

  after 'deploy:updated', 'deploy:migrate'
end

namespace :load do
  task :defaults do
    set :conditionally_migrate, fetch(:conditionally_migrate, false)
    set :migration_role, fetch(:migration_role, :db)
    set :migration_servers, -> { primary(fetch(:migration_role)) }
  end
end
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml", "config/secrets.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
