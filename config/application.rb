require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AnimePersonalProject
  class Application < Rails::Application
    # ...

    # Rails 5

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins "*"
        resource "*", headers: :any, methods: [:get, :post, :put, :delete, :options]
      end
    end

    # Rails 3/4

    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins "*"
        resource "*", headers: :any, methods: [:get, :post, :put, :delete, :options]
      end
    end
  end
end
