$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "komachi_validation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "komachi_validation"
  s.version     = KomachiValidation::VERSION
  s.authors     = ["Takumi MIURA"]
  s.email       = ["mitaku1104@gmail.com"]
  s.homepage    = "https://github.com/mitaku/komachi_validation"
  s.summary     = "Add Some SexyValidation."
  s.description = "Add Some SexyValidation."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
