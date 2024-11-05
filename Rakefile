require 'rake'
require 'haml'
require 'fileutils'

task default: :compile

# Task to clean up the compiled HTML files
task :clean do
  FileUtils.rm_r(Dir.glob("./dist/*.html"), force: true)
end

# Task to compile HAML files
task :compile do
  input_file = 'app/index.html.haml'  # Path to your HAML file
  output_file = 'dist/index.html'     # Path where the compiled HTML will be saved

  # Ensure the output directory exists
  FileUtils.mkdir_p(File.dirname(output_file))

  # Compile the HAML to HTML using Haml::Template
  haml_template = Haml::Template.new(input_file)
  File.open(output_file, 'w') do |f|
    f.write(haml_template.render)
  end
end

# Task to run tests (if applicable)
task :test do
  Rake::TestTask.new do |t|
    t.test_files = FileList['test/**/*_test.rb']  
  end
end