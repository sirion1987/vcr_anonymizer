lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "vcr_anonymizer/version"

Gem::Specification.new do |spec|
  spec.name          = "vcr_anonymizer"
  spec.version       = VcrAnonymizer::VERSION
  spec.authors       = ["Domenico Garofoli"]
  spec.email         = ["sirion1987@gmail.com"]

  spec.summary       = %q{Anonymize the content of a vcr cassettes.}
  spec.homepage      = "https://github.com/sirion1987/vcr_anonymizer"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
