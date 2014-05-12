require 'open3'

module Compiler
  class AssetCompiler

    def self.compile
      new.compile
    end

    def initialize
      @repo_root = Pathname.new(File.expand_path('../../..', __FILE__))
      @build_dir = @repo_root.join('app')
    end

    def compile
      prepare_build_dir
      copy_views
    end

    def copy_views
      Dir.chdir @repo_root.join("source", "views") do
        files = []
        Dir.glob("**/*") do |file|
          next if File.directory?(file)
          files << file
        end

        output, status = Open3.capture2e("cp -r --parents #{files.shelljoin} #{@build_dir.join('views').to_s.shellescape}")

        abort "Error copying views:\n#{output}" if status.exitstatus > 0
      end
    end

    def prepare_build_dir
      @build_dir.rmtree if @build_dir.exist?
      @build_dir.mkpath
      @build_dir.join('assets', 'stylesheets').mkpath
      @build_dir.join('assets', 'javascripts').mkpath
      @build_dir.join('views').mkpath
    end
  end
end
