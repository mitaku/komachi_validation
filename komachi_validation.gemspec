$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "komachi_validation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "komachi_validation"
  s.version     = KomachiValidation::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of KomachiValidation."
  s.description = "TODO: Description of KomachiValidation."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.11"

  s.add_development_dependency "sqlite3"
end
