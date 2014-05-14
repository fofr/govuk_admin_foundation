module GovukAdminFoundation
  class Engine < ::Rails::Engine
    require 'bootstrap-sass'

    initializer "govuk_admin_foundation.assets.precompile" do |app|
      app.config.assets.precompile += %w(
        lte-ie8.js
      )
    end

    initializer "govuk_admin_foundation.asset_pipeline" do |app|
      app.config.assets.precompile << 'govuk_admin_foundation.js'
    end

  end
end
