Gem::Specification.new do |spec|
  spec.name        = "yaml-linter"
  spec.version     = "0.0.0"
  spec.summary     = "Common-sense checks for YAML files"
  spec.description = "A Ruby gem for common-sense checks for YAML files"
  spec.authors     = ["Simon Hildebrandt"]
  spec.email       = "simonhildebrandt@gmail.com"
  spec.files       = ["lib/yaml-linter.rb"]
  spec.homepage    = "https://github.com/simonhildebrandt/yaml-linter"
  spec.license     = "MIT"
  spec.executables << "yaml-linter"
  spec.required_ruby_version = Gem::Requirement.new(">= 3.0")
  spec.add_dependency "psych", "~> 5.0"
end
