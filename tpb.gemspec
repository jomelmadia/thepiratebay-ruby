# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tpb/version'

Gem::Specification.new do |spec|
  spec.name          = "thepiratebay-ruby"
  spec.version       = Tpb::VERSION
  spec.authors       = ["Feña Agar"]
  spec.email         = ["fernando.agar@gmail.com"]

  spec.summary       = %q{Interact with The Pirate Bay.}
  spec.description   = %q{Interact with The Pirate Bay.}
  spec.homepage      = "https://github.com/elfenars/tpb"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry-byebug"

  spec.add_dependency "nokogiri"
end
