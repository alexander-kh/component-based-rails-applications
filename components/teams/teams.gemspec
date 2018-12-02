$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "teams/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "teams"
  s.version     = Teams::VERSION
  s.authors     = ["Alexander Khlipun"]
  s.email       = ["alex.khlipun@icloud.com"]
  s.summary     = %q{Teams Class}
  
  s.add_dependency "activemodel", "5.1.6"
    
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
