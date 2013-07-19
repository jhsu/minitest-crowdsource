# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/crowdsource/version'

Gem::Specification.new do |spec|
  spec.name          = "minitest-crowdsource"
  spec.version       = Minitest::Crowdsource::VERSION
  spec.authors       = ["Joseph Hsu"]
  spec.email         = ["jhsu.x1@gmail.com"]
  spec.summary       = %q{Crowdsource your assertions.}
  spec.description   = <<-DESCRIPTION
    Have a human look at your object and let you know if it is valid.
  DESCRIPTION
  spec.homepage      = "http://github.com/jhsu/minitest-crowdsource"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
