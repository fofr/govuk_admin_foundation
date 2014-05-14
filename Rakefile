require "bundler/gem_tasks"
require 'jasmine'
load 'jasmine/tasks/jasmine.rake'

task :compile => "compile:javascripts"

namespace :compile do

  desc 'Compile javascript'
  task :javascripts do
    require 'sprockets'

    target_dir = File.expand_path('../spec/javascripts/compiled_source', __FILE__)
    FileUtils.mkdir_p(target_dir)

    env = Sprockets::Environment.new(File.expand_path('..', __FILE__))
    env.append_path "app/assets/javascripts"

    javascript = 'govuk_admin_foundation'

    asset = env.find_asset(javascript)
    puts asset
    abort "Asset #{javascript} not found" unless asset
    File.open("#{target_dir}/#{javascript}.js", 'w') {|f| f.write asset.to_s }
  end
end
