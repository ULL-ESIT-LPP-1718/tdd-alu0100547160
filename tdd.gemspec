# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tdd/version"

Gem::Specification.new do |spec|
  spec.name          = "tdd"
  spec.version       = Tdd::VERSION
  spec.authors       = ["Lisseth Vergaray Del Aguila"]
  spec.email         = ["alu0100547160@ull.edu.es"]

  spec.summary       = %q{Practica 6, Desarrollo por TDD}
  spec.description   = %q{se va a utilizar la metodologíaa de desarrollo dirigido por pruebas (Test
Driven Development - TDD) y la herramienta RSpec.}
  spec.homepage      = "https://github.com/ULL-ESIT-LPP-1718/tdd-alu0100547160.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
