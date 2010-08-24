require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "futon4mongo"
    gem.summary = %Q{A port of CouchDB's Futon web interface to MongoDB}
    gem.description = %Q{A port of CouchDB's Futon web interface to MongoDB}
    gem.email = "sbellity@gmail.com"
    gem.homepage = "http://github.com/sbellity/futon4mongo"
    gem.authors = ["Stephane Bellity"]
    gem.add_dependency "sinatra", ">= 1.0"
    gem.add_dependency "mongo", ">= 1.0.7"
    gem.add_dependency "yajl-ruby", ">= 0.7.7"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "futon4mongo #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
