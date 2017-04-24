# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','MeteoInfo','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'MeteoInfo'
  s.version = MeteoInfo::VERSION
  s.author = 'Lambert Deblois-Tremblay'
  s.email = 'lambertdeblois@gmail.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Application pour consulter les infos meteo'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = false
  s.bindir = 'bin'
  s.executables << 'MeteoInfo'
  s.add_development_dependency('rake')
  s.add_runtime_dependency('gli','2.16.0')
  s.add_development_dependency('minitest')
end
