threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count
port        ENV.fetch("PORT") { 3000 }
environment ENV.fetch("RAILS_ENV") { "development" }
plugin :tmp_restart

shared_dir = "/puma_shared"
bind "unix://#{shared_dir}/sockets/puma.sock"

app_dir = File.expand_path("../..", __FILE__)
stdout_redirect "#{app_dir}/log/puma.stdout.log", "#{app_dir}/log/puma.stderr.log", true