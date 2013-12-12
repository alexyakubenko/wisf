Airbrake.configure do |config|
  config.api_key = '3d1b39398c28fb834913ca023b87b994'
  config.host    = 'errbit.pochemu-ya-takaya-dura.ru'
  config.port    = 80
  config.secure  = config.port == 443
end
