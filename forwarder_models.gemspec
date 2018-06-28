# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name = 'forwarder_models'
  s.version = '0.0.0'
  s.summary = 'Forwarder Models'
  s.description = ' '

  s.authors = ['Julian Popescu']
  s.email = 'jpopesculian@gmail.com'
  s.homepage = ''
  s.licenses = ['MIT']

  s.require_paths = ['lib']
  s.files = Dir['lib/**/*.rb']
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.4'

  s.add_runtime_dependency 'activerecord'
  s.add_runtime_dependency 'evt-settings'
end
