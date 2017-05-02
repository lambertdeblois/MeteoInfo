require 'rake/clean'
require 'rubygems'
require 'rubygems/package_task'
require 'rake/testtask'


task :default => [:test, :test_acceptation]

spec = eval(File.read('MeteoInfo.gemspec'))

Gem::PackageTask.new(spec) do |pkg|
end

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
end

Rake::TestTask.new(:test_acceptation) do |t|
  t.libs << "test_acceptation"
  t.test_files = FileList['test_acceptation/*_test.rb']
end
