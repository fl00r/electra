# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'electra/version'

Gem::Specification.new do |spec|
  spec.name          = "electra"
  spec.version       = Electra::VERSION
  spec.authors       = ["Petr Yanovich"]
  spec.email         = ["fl00r@yandex.ru"]
  spec.description   = %q{Electra serves static files with current folder as a root}
  spec.summary       = %q{Electra serves static files with current folder as a root}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "rack"
  spec.add_dependency "mime-types"
end
