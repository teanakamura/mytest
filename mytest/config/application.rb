require_relative 'boot'

require 'rails/all'

=begin
require 'redis'
uri = URI.parse(ENV["REDIS"])
REDIS = Redis.new(host: uri.host, port: uri.port)
config.cache_store = :redis_store, "redis://localhost:6379/0/cache", { expires_in: 90.minutes }
=end

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mytest
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
