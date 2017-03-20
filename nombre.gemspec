# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nombre/version'

Gem::Specification.new do |spec|
  spec.name          = "nombre"
  spec.version       = Nombre::VERSION
  spec.authors       = ["takahashim"]
  spec.email         = ["maki@rubycolor.org"]

  spec.summary       = %q{generate nombre-only PDF}
  spec.description   = %q{generate nombre-only PDF}
  spec.homepage      = "https://github.com/takahashim/nombre"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "prawn"
  sepc.license =  ['MIT']
end
