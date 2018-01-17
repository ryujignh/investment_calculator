require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module InvestmentCalculator
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # 衝撃の事実!? "# -*- encoding: utf-8 -*-"じゃなくてもいいんです！
    # https://qiita.com/jnchito/items/8f44a3c52d4669fefa93

    config.generators do |generate|
    generate.helper(false)
    generate.javascripts(false)
    # generate.assets(false)
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
