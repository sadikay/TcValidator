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

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "savon"
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency 'savon'
end
