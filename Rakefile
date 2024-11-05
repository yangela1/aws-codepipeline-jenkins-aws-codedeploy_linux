require 'rake'
require 'haml'
require 'fileutils'

# Task to clean up the compiled HTML files
task :clean do
  FileUtils.rm_r(Dir.glob("./dist/*.html"), force: true)
end

task :compile do
  require 'haml'

  input_file = 'app/index.html.haml'  # Path to your HAML file
  output_file = 'dist/index.html'     # Path where the compiled HTML will be saved

  # Ensure the output directory exists
  FileUtils.mkdir_p(File.dirname(output_file))

  # Read and compile the HAML file
  haml_template = File.read(input_file)
  engine = Haml::Engine.new(haml_template, format: :html5)

  # Write the compiled HTML to the output file
  File.open(output_file, 'w') do |f|
    f.write engine.render
  end
end


# Task to run tests (if applicable)
task :test do 
  Rake::TestTask.new do |t|
    t.test_files = FileList['test/jenkins_sample_test.rb']
  end
end
