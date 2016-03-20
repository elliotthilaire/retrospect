# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'retrospect/version'

Gem::Specification.new do |spec|
  spec.name          = "retrospect"
  spec.version       = Retrospect::VERSION
  spec.authors       = ["elliotthilaire"]
  spec.email         = ["elliott.hilaire@gmail.com"]

  spec.summary       = "A command line tool for saving thoughts for your next retrospective"
  spec.description   = "A command line tool for saving thoughts for your next retrospective"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ['retrospect']
  spec.require_paths = ['lib']

  spec.add_dependency 'thor', '~> 0.19.1'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
