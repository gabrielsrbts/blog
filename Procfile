web: bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}

web: TRUSTED_IP=10.0.2.2 rails s -b 0.0.0.0
