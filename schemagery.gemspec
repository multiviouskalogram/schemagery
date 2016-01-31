$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "schemagery/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "schemagery"
  s.version     = Schemagery::VERSION
  s.authors     = ["Jim Joyce", "Michael Karouzos"]
  s.email       = ["figureout@gmail.com"]
  s.homepage    = "https://whitehouse.gov"
  s.summary     = "Summary of Schemagery."
  s.description = "Description of Schemagery."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end
