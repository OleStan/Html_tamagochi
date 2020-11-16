# frozen_string_literal: true

require_relative "lib/html_tam/version"

Gem::Specification.new do |spec|
  spec.name          = "html_tam"
  spec.version       = HtmlTam::VERSION
  spec.authors       = ["OleStan"]
  spec.email         = ["59766354+OleStan@users.noreply.github.com"]
  spec.homepage      = "https://github.com/OleStan/RubyHW"
  spec.summary       = "Write a short summary, because RubyGems requires one."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
