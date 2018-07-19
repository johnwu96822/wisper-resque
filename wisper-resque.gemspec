lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wisper/resque/version'

Gem::Specification.new do |spec|
  spec.name          = 'wisper-resque'
  spec.version       = Wisper::Resque::VERSION
  spec.authors       = ['Bartosz Zurkowski']
  spec.email         = ['zurkowski.bartosz@gmail.com']

  spec.summary       = 'Async publishing for Wisper using Resque'
  spec.description   = 'Async publishing for Wisper using Resque'
  spec.homepage      = 'https://github.com/bzurkowski/wisper-resque'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*']
  spec.require_paths = ['lib']

  spec.add_dependency 'resque', '~> 1.0'
  spec.add_dependency 'wisper', '~> 2.0'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'rubocop', '~> 0.49'
end
