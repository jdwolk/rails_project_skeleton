require File.expand_path('../config/application', __FILE__)
require 'rubocop/rake_task'

RuboCop::RakeTask.new
Rails.application.load_tasks

if Rails.env.development? || Rails.env.test?
  task default: [:spec, :rubocop, :coffeelint]
end
