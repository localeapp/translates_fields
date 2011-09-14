# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'translates_fields/version'

Gem::Specification.new do |s|
  s.name         = "translates_fields"
  s.version      = TranslatesFields::VERSION
  s.authors      = ["Christopher Dell"]
  s.email        = "chris@tigrish.com"
  s.homepage     = "https://github.com/Locale/translates_fields"
  s.summary      = "[summary]"
  s.description  = "[description]"

  s.files        = `git ls-files app lib`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rubyforge_project = '[none]'

  s.add_development_dependency 'rake'
  s.add_development_dependency "gem-release"
  s.add_development_dependency 'rspec', '2.5.0'
  s.add_development_dependency 'activerecord', '3.0.10'
  s.add_development_dependency 'i18n', '0.5.0'
  s.add_development_dependency 'sqlite3'
end
