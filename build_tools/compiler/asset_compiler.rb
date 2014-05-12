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
      prepare_build_directory
      copy_views
      copy_assets
    end

    def copy_views
      Dir.chdir @repo_root.join("source", "views") do
        files = retrieve_files_from_directory
        output, status = copy_files_to_subdirectory(files, "views")
        abort "Error copying assets:\n#{output}" if status.exitstatus > 0
      end
    end

    def copy_assets
      Dir.chdir @repo_root.join("source", "assets") do
        files = retrieve_files_from_directory
        output, status = copy_files_to_subdirectory(files, "assets")
        abort "Error copying assets:\n#{output}" if status.exitstatus > 0
      end
    end

    def prepare_build_directory
      @build_dir.rmtree if @build_dir.exist?
      @build_dir.mkpath
      @build_dir.join('assets').mkpath
      @build_dir.join('views').mkpath
    end

    private

    def retrieve_files_from_directory
      files = []
      Dir.glob("**/*") do |file|
        next if File.directory?(file)
        files << file
      end
      files
    end

    def copy_files_to_subdirectory(files, subdirectory)
      Open3.capture2e("cp -r --parents #{files.shelljoin} #{@build_dir.join(subdirectory).to_s.shellescape}")
    end

  end
end
