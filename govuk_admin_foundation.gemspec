# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'govuk_admin_foundation/version'

Gem::Specification.new do |gem|
  gem.name          = "govuk_admin_foundation"
  gem.version       = GovukAdminFoundation::VERSION
  gem.authors       = ["GOV.UK Dev"]
  gem.email         = ["govuk-dev@digital.cabinet-office.gov.uk"]
  gem.description   = %q{SASS, Styles, JavaScript and templates for GOV.UK admin applications}
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.files         = Dir["{app,lib}/**/*"] + ["LICENCE.txt", "README.md"]
  gem.require_paths = ["lib"]

  gem.add_dependency 'rails', '>= 3.1'
  gem.add_dependency 'bootstrap-sass', '3.1.0'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'sass', '3.2.12'
  gem.add_development_dependency 'rspec', '2.14.1'
  gem.add_development_dependency 'jasmine', '2.0.0'
end
