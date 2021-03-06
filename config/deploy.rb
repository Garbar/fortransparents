# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "fortransparents"
set :repo_url, "git@github.com:Garbar/fortransparents.git"

set :nginx_server_name,     'oksanahamster.review'
set :nginx_use_ssl,      true
set :nginx_ssl_certificate, '/etc/letsencrypt/live/oksanahamster.review/fullchain.pem'
set :nginx_ssl_certificate_key,         '/etc/letsencrypt/live/oksanahamster.review/privkey.pem'
# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/deploy/apps/fortransparents"
append :linked_files, "config/database.yml", "config/secrets.yml", "config/application.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "vendor/bundle", "public/system", "public/uploads"

# Set ssh user
set :user, 'deploy'
set :ssh_options, {
  user: fetch(:user)
}

# For capistrano-puma
set :puma_init_active_record, true

# For capistrano-bundler
set :bundle_path, -> { shared_path.join('vendor','bundle') }
set :bundle_flags, '--deployment'
set :bundle_binstubs, nil

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, "config/database.yml"

# Default value for linked_dirs is []
# append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure
