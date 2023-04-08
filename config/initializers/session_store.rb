Rails.application.config.session_store :redis_store,
  key: '_mv_session',
  serializer: :json,
  domain: :all,
  redis: {
    expire_after: 90.minutes,
    key_prefix: 'mv:session:',
    url: ENV['REDIS_URL']
  }