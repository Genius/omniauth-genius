lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-genius/version'

Gem::Specification.new do |gem|
  gem.name ='omniauth-genius'
  gem.authors = ['john@genius.com']
  gem.version = OmniAuth::Genius::VERSION
  gem.summary = 'OmniAuth Strategy for Genius'

  gem.add_runtime_dependency 'omniauth', '~> 1.0'
  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.0'
end
