lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "glitched_string/version"

Gem::Specification.new do |spec|
  spec.name          = "glitched_string"
  spec.version       = GlitchedString::VERSION
  spec.authors       = ["Shimpei Makimoto"]
  spec.email         = ["makimoto@tsuyabu.in"]
  spec.summary       = %q{This gem adds some methods to String class. They generates glitched string}
  spec.homepage      = "https://github.com/makimoto/glitched_string"
  spec.license       = "MIT"
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
end
