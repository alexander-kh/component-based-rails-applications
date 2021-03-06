$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "games/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "games"
  s.version     = Games::VERSION
  s.authors     = ["Alexander Khlipun"]
  s.email       = ["alex.khlipun@icloud.com"]
  s.summary     = "Summary of Games."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*",
                "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "activerecord", "5.1.6"
  s.add_dependency "teams_store"
  
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "database_cleaner"
  
  s.add_development_dependency "sqlite3"
end
