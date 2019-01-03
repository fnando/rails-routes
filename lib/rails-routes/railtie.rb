module RailsRoutes
  class Railtie < Rails::Railtie
    initializer "rails_routes" do
      app = Rails.application
      routes = Dir[Rails.root.join("config/routes/**/*.rb").to_s].sort
      app.routes_reloader.paths.unshift(*routes)
      app.config.paths["config/routes.rb"].concat(routes)
    end
  end
end
