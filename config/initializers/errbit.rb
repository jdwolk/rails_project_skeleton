Airbrake.configure do |config|
  config.api_key = ENVied.AIRBRAKE_API_KEY
  config.host    = ENVied.AIRBRAKE_HOST
  config.port    = 80
  config.secure  = config.port == 443
end
