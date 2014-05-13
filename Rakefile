$:.unshift File.expand_path('../lib', __FILE__)
$:.unshift File.expand_path('../build_tools', __FILE__)
require "bundler/gem_tasks"

desc "Compile templates from ./source into ./app"
task :compile do
  require 'compiler/asset_compiler'
  puts "Compiling templates into ./app"
  Compiler::AssetCompiler.compile
end
require 'jasmine'
load 'jasmine/tasks/jasmine.rake'
