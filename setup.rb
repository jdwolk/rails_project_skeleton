setup :secret_key_base

rake 'db:setup db:test:prepare db:seed'

finish 'All finished, just run rails s'
