require 'rubygems'
require 'bundler'

require 'rails'
Bundler.require :default, :development

Combustion.initialize!
run Combustion::Application
