$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name          = "teams_store"
  s.version       = "0.0.1"
  s.authors       = ["Alexander Khlipun"]
  s.email         = ["alex.khlipun@icloud.com"]
  s.summary       = "Summary of TeamsStore"

  s.files         = Dir["{app,config,db,lib}/**/*",
                        "MIT-LICENSE", "Rakefile", "README.md"]
  
  s.add_dependency "teams"
  
  s.add_development_dependency "rspec"
end
