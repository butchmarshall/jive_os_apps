$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jive_os_apps/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jive_os_apps"
  s.version     = JiveOsApps::VERSION
  s.authors     = ["Butch Marshall"]
  s.email       = ["butch.a.marshall@gmail.com"]
  s.homepage    = "https://github.com/butchmarshall/jive_os_apps"
  s.summary     = "Summary of JiveOsApps."
  s.description = " Description of JiveOsApps."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
