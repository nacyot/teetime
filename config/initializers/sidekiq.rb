Sidekiq.configure_server do |config|
  config.redis = {
    url: 'redis://192.168.59.103:6379',
    namespace: 'sidekiq'
  }
end
