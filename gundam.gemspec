# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gundam/version'

Gem::Specification.new do |spec|
  spec.name          = "gundam"
  spec.version       = Gundam::VERSION
  spec.authors       = ["David Saenz"]
  spec.email         = ["david.saenz.tagarro@gmail.com"]

  spec.summary       = %q{A Command Line Robot}
  spec.description   = %q{A Command Line Robot for Terminal Lovers}
  spec.homepage      = "https://github.com/dsaenztagarro/gundam"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
