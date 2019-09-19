require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Contacts
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.generators.system_tests = nil
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'localhost:3434'
        resource '/*', credentials: true, headers: :any, methods: [
          :get, :post, :options, :delete, :patch, :put
        ]
      end
      allow do
       origins 'localhost:3435'
       resource '/*', credentials: true, headers: :any, methods: [
         :get, :post, :options, :delete, :patch, :put
       ]
     end
    end
  end
end



