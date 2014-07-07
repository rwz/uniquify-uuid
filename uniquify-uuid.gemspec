# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'uniquify-uuid/version'

Gem::Specification.new do |s|
  s.name        = 'uniquify-uuid'
  s.version     = Uniquify::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Pavel Pravosud']
  s.email       = ['pavel@pravosud.com']
  s.homepage    = 'http://github.com/rwz/uniquify-uuid'
  s.license     = 'MIT'
  s.summary     = 'Generate a unique UUID token with Active Record'
  s.description = 'The same as Ryan Bates uniquify gem, but uses UUID as default to generate tokens'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path  = 'lib'

  s.add_dependency 'simple_uuid', '~> 0.4.0'
end
