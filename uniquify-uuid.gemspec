# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'uniquify-uuid/version'

Gem::Specification.new do |s|
  s.name        = 'uniquify-uuid'
  s.version     = Uniquify::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['rwz']
  s.email       = ['rwz@duckroll.ru']
  s.homepage    = ''
  s.summary     = %q{Generate a unique UUID token with Active Record.}
  s.description = %q{The same as Ryan Bates uniquify gem, but uses UUID to generate tokens.}

  s.rubyforge_project = "uniquify-uuid"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)
  
  s.add_dependency 'simple_uuid', '0.1.2'
end