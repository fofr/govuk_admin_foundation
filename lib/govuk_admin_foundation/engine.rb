module GovukAdminFoundation
  class Engine < ::Rails::Engine
    require 'bootstrap-sass'

    initializer "govuk_admin_foundation.assets.precompile" do |app|
      app.config.assets.precompile += %w(
        lte-ie8.js
      )
    end

  end
end
