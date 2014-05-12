# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'govuk_admin_foundation/version'

Gem::Specification.new do |gem|
  gem.name          = "govuk_admin_foundation"
  gem.version       = GovukAdminFoundation::VERSION
  gem.authors       = ["TODO: Write your name"]
  gem.email         = ["TODO: Write your email address"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = Dir["{app,lib}/**/*"] + ["LICENCE.txt", "README.md"]
  gem.require_paths = ["lib"]

  gem.add_dependency 'rails', '>= 3.1'
  gem.add_dependency 'bootstrap-sass', '3.1.0'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'sass', '3.2.12'
  gem.add_development_dependency 'rspec', '2.14.1'
end
