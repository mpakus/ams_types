# coding: utf-8
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ams_types/version'

Gem::Specification.new do |spec|
  spec.name          = 'ams_types'
  spec.version       = AmsTypes::VERSION
  spec.authors       = ['Renat Ibragimov']
  spec.email         = ['mrak69@gmail.com']

  spec.summary       = 'Active::Model::Serializer attributes with type definition'
  spec.description   = 'adds types to AMS attributes'
  spec.homepage      = 'https://github.com/mpakus/ams_types'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.49'
  spec.add_development_dependency 'pry', '~> 0.10'
end
