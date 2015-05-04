rails_env         = ENV['RACK_ENV'] || ENV['RAILS_ENV'] || raise('Unknown env')
app_path          = "/home/ubuntu/blog/#{rails_env}/current"
pid               "/home/ubuntu/blog/#{rails_env}/shared/tmp/pids/unicorn.pid"
stderr_path       "#{app_path}/log/#{rails_env}.log"
stdout_path       "#{app_path}/log/#{rails_env}.log"
sock_path         = "unix:#{app_path}/tmp/sockets/unicorn.sock"
working_directory app_path

# listen            '192.241.215.86:3000'
listen            '127.0.0.1:3000'

worker_processes  2
timeout           30
preload_app       true

before_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    Process.kill 'QUIT', Process.pid
  end

  ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to sent QUIT'
  end

  ActiveRecord::Base.establish_connection
end