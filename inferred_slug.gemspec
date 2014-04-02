$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'inferred_slug/version'

Gem::Specification.new do |s|
  s.name        = 'inferred_slug'
  s.version     = InferredSlug::VERSION
  s.summary     = 'Library for adding slugs on your Rails application'
  s.description = 'Library for easily adding slugs on your Rails application without the need of database storage'
  s.authors     = ['Rafael Fernández López']
  s.email       = 'ereslibre@ereslibre.es'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/ereslibre/inferred_slug'

  s.add_dependency 'stringex'
end
