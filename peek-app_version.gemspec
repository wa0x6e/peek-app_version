# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peek-app_version/version'

Gem::Specification.new do |gem|
  gem.name          = 'peek-app_version'
  gem.version       = Peek::AppVersion::VERSION
  gem.authors       = ['Wan Qi Chen']
  gem.email         = ['kami@kamisama.me']
  gem.description   = 'Display the application version number.'
  gem.summary       = 'Display the application version number.'
  gem.homepage      = 'https://github.com/kamisama/peek-app_version'
  gem.license       = 'MIT'
  gem.cert_chain  = ['certs/kamisama.pem']
  gem.signing_key = File.expand_path('~/.ssh/gem-private_key.pem') if $0 =~ /gem\z/

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'peek', '~> 0.1.0'
end
