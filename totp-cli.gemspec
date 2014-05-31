# -*- encoding: utf-8 -*-

require File.expand_path('../lib/totp/cli/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "totp-cli"
  gem.version       = TOTP::CLI::VERSION
  gem.summary       = %q{TOTP application with a command line interface}
  gem.description   = %q{Stores TOTP seeds and generates one time passwords all using a loveley command line interface}
  gem.license       = "MIT"
  gem.authors       = ["Brady Love"]
  gem.email         = "love.brady@gmail.com"
  gem.homepage      = "https://rubygems.org/gems/totp-cli"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'slop', '~> 3.5'
  gem.add_dependency 'rotp', '~> 1.6'

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rdoc', '~> 3.0'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
  gem.add_development_dependency 'pry'
end
