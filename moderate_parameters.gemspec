
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "moderate_parameters/version"

Gem::Specification.new do |spec|
  spec.name          = "moderate_parameters"
  spec.version       = ModerateParameters::VERSION
  spec.authors       = ["Kyle Boe, Mike Calhoun"]
  spec.email         = ["kyle@hint.io, mike@hint.io"]

  spec.summary       = %q{Protected Attributes to Strong Parameters migration tool}
  spec.description   = %q{A tool for migrating Rails applications from Protected Attributes to Strong Parameters.}
  spec.homepage      = "https://github.com/hintmedia/moderate_parameters"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/hintmedia/moderate_parameters"
    spec.metadata["changelog_uri"] = "https://github.com/hintmedia/moderate_parameters/blob/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 3.0", "< 6.1"
  spec.add_dependency "actionpack", ">= 3.0", "< 6.1"
  spec.add_dependency "activemodel", ">= 3.0", "< 6.1"
  spec.add_dependency "railties", ">= 3.0", "< 6.1"

  spec.add_development_dependency "bundler", "~> 2.0.1"
  spec.add_development_dependency "pry", "~> 0.12.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end