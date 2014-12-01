require 'envied'
ENVied.require(*ENV['ENVIED_GROUPS'] || [:default, ENV['RACK_ENV']])

workers ENVied.PUMA_WORKERS
threads ENVied.PUMA_MIN_THREADS, ENVied.PUMA_MAX_THREADS

preload_app!

rackup DefaultRackup
port ENVied.PORT
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # worker specific setup
  ActiveSupport.on_load(:active_record) do
    config = ActiveRecord::Base.configurations[Rails.env] ||
                Rails.application.config.database_configuration[Rails.env]
    config['pool'] = [ENVied.PUMA_MAX_THREADS, 16].max
    ActiveRecord::Base.establish_connection(config)
  end
end
