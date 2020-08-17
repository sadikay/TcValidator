# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tc_validator/version'

Gem::Specification.new do |spec|
  spec.name          = "tc_validator"
  spec.version       = TcValidator::VERSION
  spec.authors       = ["sadikay"]
  spec.email         = ["sadikay91@gmail.com"]

  spec.summary       = %q{Ruby library to validate Turkis Repuplic ID (TC Kimlik NO)}
  spec.description   = %q{TcValidator can validate TR ID from https://tckimlik.nvi.gov.tr.}
  spec.homepage      = "https://github.com/sadikay/tcvalidator"

  # spec.rubyforge_project = "tc_validator"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency 'savon'
end
