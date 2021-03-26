# frozen_string_literal: true

require_relative "lib/what_should_i_eat/version"

Gem::Specification.new do |spec|
  spec.name          = "what_should_i_eat"
  spec.version       = WhatShouldIEat::VERSION
  spec.authors       = ["Alejandra Valdivia"]
  spec.email         = ["alexxandra_valdivia@hotmail.com"]

  spec.summary       = "A Ruby Gem that Lists recipes"
  spec.description   = "App that gives a list of deliciously fresh recipes to inspire our users"
  spec.homepage      = "https://www.edamam.com/website/fresh.jsp"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = 'https://www.edamam.com/website/fresh.jsp'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://www.edamam.com/website/fresh.jsp'


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  #Uncomment to register a new dependency of your gem
  #spec.add_dependency e.g. "http", "~> 4.4"  

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
