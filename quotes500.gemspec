# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quotes500/version'

Gem::Specification.new do |spec|
  spec.name          = "quotes500"
  spec.version       = Quotes500::VERSION
  spec.authors       = ["Jumpei Katayama"]
  spec.email         = ["junktym123@gmail.com"]

  spec.summary       = "Quotes500 is JSON generator for quotery.com."
  spec.description   = "Quotes500 is JSON generator for quotery.com. It parses html content, converting it to JSON file."
  spec.homepage      = "https://github.com/jj1100x/quotes500.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["quotes500"]
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "nokogiri", "1.6.7.2"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

end
