# -*- encoding: utf-8 -*-

require File.expand_path('../lib/yyid', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "yyid"
  gem.version       = YYID::VERSION
  gem.summary       = "Generates YYIDs."
  gem.description   = "Generates tokens that look like type 4 UUID, but are more random."
  gem.license       = "MIT"
  gem.authors       = ["Jan Lelis"]
  gem.email         = "mail@janlelis.de"
  gem.homepage      = "https://github.com/janlelis/yyid"

  gem.files         = Dir['{**/}{.*,*}'].select { |path| File.file?(path) }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.0'
  gem.add_development_dependency 'rake', '~> 0.8'
  gem.add_development_dependency 'rspec', '~> 2.4'
  gem.add_development_dependency 'rr'
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
end
