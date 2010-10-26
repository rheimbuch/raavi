# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "raavi/version"

Gem::Specification.new do |s|
  s.name        = "raavi"
  s.version     = Raavi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ryan Heimbuch"]
  s.email       = ["rheimbuch@gmail.com"]
  s.homepage    = "http://github.com/rheimbuch/raavi"
  s.summary     = %q{Easy Vaadin apps in JRuby}
  s.description = %q{Wraps the Vaadin library for use from JRuby}

  s.rubyforge_project = "raavi"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency('activesupport', '~> 3.0.0')
end
