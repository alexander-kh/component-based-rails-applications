$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "web_ui/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "web_ui"
  s.version     = WebUi::VERSION
  s.authors     = ["Alexander Khlipun"]
  s.email       = ["alex.khlipun@icloud.com"]
  s.summary     = "Summary of WebUi."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*",
                "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "5.1.6"
  s.add_dependency "slim-rails", "3.2.0"
  s.add_dependency "trueskill"
  s.add_dependency "jquery-rails", "4.3.1"
  
  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "capybara"
  s.add_development_dependency "rails-controller-testing"
end
