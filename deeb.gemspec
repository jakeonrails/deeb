# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deeb/version'

Gem::Specification.new do |spec|
  spec.name          = "deeb"
  spec.version       = Deeb::VERSION
  spec.authors       = ["Jake Moffatt"]
  spec.email         = ["jakeonrails@gmail.com"]
  spec.summary       = %q{A debugging method called deeb}
  spec.description   = %q{A debugging method called deeb}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'awesome_print'
  spec.add_dependency 'binding_of_caller'

end
