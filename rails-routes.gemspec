require "./lib/rails-routes/version"

Gem::Specification.new do |spec|
  spec.name          = "rails-routes"
  spec.version       = RailsRoutes::VERSION
  spec.authors       = ["Nando Vieira"]
  spec.email         = ["fnando.vieira@gmail.com"]
  spec.summary       = "Enable config/routes/*.rb on your Rails application."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/fnando/rails-routes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "minitest-utils"
  spec.add_development_dependency "pry-meta"
  spec.add_development_dependency "rails"
  spec.add_development_dependency "rack-test"
end
