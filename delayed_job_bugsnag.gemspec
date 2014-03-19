# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'delayed_job_bugsnag/version'

Gem::Specification.new do |spec|
  spec.name          = 'delayed_job_bugsnag'
  spec.version       = DelayedJobBugsnag::VERSION
  spec.authors       = ['Kuldeep Aggarwal']
  spec.email         = ['kd.engineer@yahoo.co.in']
  spec.summary       = 'Plugin for integration BugSnag with DelayedJob.'
  spec.description   = 'Plugin for integration BugSnag with DelayedJob.'
  spec.homepage      = 'https://github.com/kuldeepaggarwal/delayed_job_bugsnag'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'bugsnag'
end
