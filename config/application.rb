require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(*Rails.groups)
ENVied.require(*ENV['ENVIED_GROUPS'] || Rails.groups)

module ReplaceMe
  class Application < Rails::Application
    config.autoload_paths += %W(
      #{config.root}/lib
      #{config.root}/app/services
    )
  end
end
