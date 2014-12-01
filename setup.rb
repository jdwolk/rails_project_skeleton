setup :secret_key_base

setup :airbrake, required: true do
  env 'AIRBRAKE_API_KEY', provide('Airbrake / Errbit API key')
  env 'AIRBRAKE_HOST', provide('Airbrake / Errbit host')
end

setup :puma, required: true do
  env 'PUMA_WORKERS', provide('# of Puma workers', default: '1')
  env 'PUMA_MIN_THREADS', provide('Max # of Puma threads', default: '1')
  env 'PUMA_MAX_THREADS', provide('Min # of Puma threads', default: '1')
end

env 'MAILER_HOST', provide('Mailer host', default: 'localhost:3000')
env 'PORT', provide('Server port', default: '3000')

rake 'db:setup db:test:prepare db:seed'
finish 'All finished, just run rails s'
