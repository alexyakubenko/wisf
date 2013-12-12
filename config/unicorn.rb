root = "/root/apps/wisf/current"

working_directory root

pid "#{ root }/tmp/pids/unicorn.pid"

stderr_path "#{ root }/log/unicorn_err.log"
stdout_path "#{ root }/log/unicorn.log"

listen '/tmp/unicorn.wisf.sock'

worker_processes 4

preload_app true

timeout 30
