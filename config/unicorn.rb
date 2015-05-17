if ENV["RAILS_ENV"] == "development"
  worker_processes 1
else
  worker_processes 3
end

timeout 30

# # Set the working application directory
# # working_directory "/path/to/your/app"
# working_directory "/srv/www/likeminds/current/"
#
# # Unicorn PID file location
# # pid "/path/to/pids/unicorn.pid"
# pid "/srv/www/likeminds/shared/pids/unicorn.pid"
#
# # Path to logs
# # stderr_path "/path/to/log/unicorn.log"
# # stdout_path "/path/to/log/unicorn.log"
# stderr_path "/srv/www/likeminds/shared/log/unicorn.log"
# stdout_path "/srv/www/likeminds/shared/log/unicorn.log"
#
# # Unicorn socket
# listen "/srv/www/likeminds/shared/sockets/unicorn.likeminds.sock"
# listen "/srv/www/likeminds/shared/sockets/unicorn.likeminds.sock"
#
# # Number of processes
# # worker_processes 4
# worker_processes 2
#
# # Time-out
# timeout 30