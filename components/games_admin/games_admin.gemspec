$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "games_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "games_admin"
  s.version     = GamesAdmin::VERSION
  s.authors     = ["Alexander Khlipun"]
  s.email       = ["alex.khlipun@icloud.com"]
  s.summary     = "Summary of GamesAdmin."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*",
                "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.6"
  s.add_dependency "slim-rails", "3.2.0"
  s.add_dependency "jquery-rails", "4.3.1"
  
  s.add_dependency "games"
  s.add_dependency "teams_store"
  s.add_dependency "web_ui"

  s.add_development_dependency "sqlite3"
  
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "capybara"
  s.add_development_dependency "rails-controller-testing"
end
