$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "meta_description/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "meta_description"
  s.version     = MetaDescription::VERSION
  s.authors     = ["Yan Lhert"]
  s.email       = ["yan@tryzen99.com"]
  s.summary     = "Metadescription management"
  s.description = "Metadescription allows you to easily specify lots of different metadescriptions for all your different pages/controller actions.  This is helpful for SEO"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.1"

  s.add_development_dependency "sqlite3"
end
