lock "~> 3.16.0"

set :application, "crowdaxcore"
set :repo_url, "git@github.com:OrtusAfricaCapital/crowdaxcore.git"

set :deploy_to, "/home/crowdax/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 3
