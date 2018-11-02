$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "app_component/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "app_component"
  s.version     = AppComponent::VERSION
  s.authors     = ["Alexander Khlipun"]
  s.email       = ["alex.khlipun@icloud.com"]
  s.summary     = "Summary of AppComponent."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*",
                "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "5.1.6"
  s.add_dependency "slim-rails", "3.2.0"
  s.add_dependency "trueskill"

  s.add_development_dependency "sqlite3"
  
  s.add_development_dependency "rspec-rails"
end