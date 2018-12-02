$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "teams_store/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "teams_store"
  s.version     = "0.0.1"
  s.authors     = ["Alexander Khlipun"]
  s.email       = ["alex.khlipun@icloud.com"]
  s.summary     = "Summary of TeamsStore."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*",
                "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "activerecord", "5.1.6"
  s.add_dependency "teams"
  
  s.add_development_dependency "rails", "5.1.6"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "database_cleaner"
  
  s.add_development_dependency "sqlite3"
end
