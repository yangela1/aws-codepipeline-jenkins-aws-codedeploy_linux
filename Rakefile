# Rakefile
require 'rake'
require 'haml'
require 'fileutils'

namespace :deploy do
  desc 'Compile HAML to HTML'
  task :compile do
    haml_file = 'app/index.haml'
    html_file = 'app/index.html'

    # Check if the HAML file exists
    if File.exist?(haml_file)
      # Compile HAML to HTML
      Haml::Engine.new(File.read(haml_file)).render(File.open(html_file, 'w'))
      puts "Compiled #{haml_file} to #{html_file}"
    else
      puts "HAML file #{haml_file} does not exist."
    end
  end

  desc 'Clean up compiled HTML files'
  task :clean do
    FileUtils.rm_f(Dir.glob('app/*.html'))
    puts 'Cleaned up compiled HTML files.'
  end

  desc 'Run tests'
  task :test do
    Dir.glob('test/*_test.rb').each do |test_file|
      require_relative test_file
    end
  end
end
