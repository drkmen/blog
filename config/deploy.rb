# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'blog'
set :repo_url, 'git@github.com:drkmen/blog.git'

set :deploy_via, :remote_cache # Using cache. Deploying only changes.

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
set :pty, true
set :use_sudo, true

set :ssh_options, {
                    forward_agent: true,
                    auth_methods: ["publickey"],
                    keys: ["/home/mike/work/blog/Work.pem"]
                }

# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
# set :linked_files, %w{config/database.yml config/secrets.yml}

# Default value for linked_dirs is []
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 3

namespace :deploy do

  task :restart do
    on roles :app do
      set :use_sudo, true
      p '*'*100
      p 'REBOOTING UNICORN'
      execute "kill -SIGKILL `cat /home/ubuntu/blog/shared/tmp/pids/unicorn.pid` && rm /home/ubuntu/blog/shared/tmp/pids/unicorn.pid"
      execute "bundle exec unicorn -c home/ubuntu/blog/current/config/unicorn.rb -E production -D"
    end
  end

  # after :deploy, :restart do
  #   p '*'*100
  #   p 'REBOOTING UNICORN'
  #   execute "kill -SIGKILL `cat /home/ubuntu/blog/shared/tmp/pids/unicorn.pid` && rm /home/ubuntu/blog/shared/tmp/pids/unicorn.pid"
  #   execute "bundle exec unicorn -c home/ubuntu/blog/current/config/unicorn.rb -E production -D"
  # end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
      # execute "kill -SIGKILL `cat /home/ubuntu/blog/shared/tmp/pids/unicorn.pid` && rm /home/ubuntu/blog/shared/tmp/pids/unicorn.pid"
      # execute "bundle exec unicorn -c home/ubuntu/blog/current/config/unicorn.rb -E production -D"
    end
  end

end

after 'deploy:finished', 'deploy:restart'
# execute "kill -SIGKILL `cat /home/ubuntu/blog/shared/tmp/pids/unicorn.pid` && rm /home/ubuntu/blog/shared/tmp/pids/unicorn.pid"  ### kill unicorn
# execute "cd #{release_path} && bundle exec unicorn -c config/unicorn.rb -E production -D"     ### run production