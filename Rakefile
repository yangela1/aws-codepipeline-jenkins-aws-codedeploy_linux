#!/usr/bin/env ruby

require 'haml'
require 'fileutils'
require 'rake'

task :clean do
  FileUtils.rm_r(Dir.glob("./*.html"), force: true)
end

task :compile do
  FileList.new('./src/*.haml').each do |filename|
    if filename =~ /([^\/]+)\.haml$/
      File.open($1 + '.html', 'w') do |f|
        f.write Haml::Engine.new(File.read(filename)).render
      end
    end
  end
end

task :test do 
  Rake::TestTask.new do |t|
    t.test_files = FileList['test/jenkins_sample_test.rb']
  end
end

