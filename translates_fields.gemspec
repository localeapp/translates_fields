# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'translates_fields/version'

Gem::Specification.new do |s|
  s.name         = "translates_fields"
  s.version      = TranslatesFields::VERSION
  s.authors      = ["Christopher Dell"]
  s.email        = "chris@tigrish.com"
  s.homepage     = "https://github.com//translates_fields"
  s.summary      = "[summary]"
  s.description  = "[description]"

  s.files        = `git ls-files app lib`.split("\n")
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.rubyforge_project = '[none]'
end
