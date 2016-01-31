$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "schemagery/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "schemagery"
  s.version     = Schemagery::VERSION
  s.authors     = ["Jim Joyce", "Michael Karouzos"]
  s.email       = ["schemagery@gmail.com"]
  s.homepage    = "http://builtbycoder.com"
  s.summary     = "Visualization and optimization tool for relational database schemas"
  s.description = "Description of Schemagery."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.3"

  s.add_development_dependency "sqlite3"
end
