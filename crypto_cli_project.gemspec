require_relative 'lib/crypto_cli_project/version'

Gem::Specification.new do |spec|
  spec.name          = "crypto_cli_project"
  spec.version       = CryptoCliProject::VERSION
  spec.authors       = ["Devon Tubben"]
  spec.email         = ["tubbend1@msu.edu"]

  spec.summary       = %q{TODO: crypto currencies cli.}
  spec.description   = %q{TODO: crypto project.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "github.com/DevonTubben"
  spec.metadata["changelog_uri"] = "github.com/DevonTubben/changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
