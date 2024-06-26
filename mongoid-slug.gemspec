# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'mongoid/slug/version'

Gem::Specification.new do |s|
  s.name        = 'mongoid-slug'
  s.version     = Mongoid::Slug::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Andreas Saebjoernsen']
  s.email       = ['andy@cosemble.com']
  s.homepage    = 'https://github.com/mongoid/mongoid-slug'
  s.summary     = 'Mongoid URL slugs'
  s.description = 'Mongoid URL slug or permalink generator'
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.5'

  s.add_dependency 'mongoid', '>= 7.0'
  s.add_dependency 'stringex', '~> 2.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-its'
  s.add_development_dependency 'uuid'

  s.files         = Dir.glob('lib/**/*') + %w[LICENSE README.md]
  s.test_files    = Dir.glob('spec/**/*')
  s.require_paths = ['lib']
end
