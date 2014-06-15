# -*- encoding: utf-8 -*-
# stub: backbone-on-rails 1.1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "backbone-on-rails"
  s.version = "1.1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["William Meleyal"]
  s.date = "2013-10-14"
  s.description = "A simple gem for using Backbone with Rails (>= 3.1), based on thoughtbot's 'Backbone.js on Rails'"
  s.email = ["william.meleyal@gmail.com"]
  s.homepage = "http://github.com/meleyal/backbone-on-rails"
  s.rubygems_version = "2.2.2"
  s.summary = "A simple gem for using Backbone with Rails"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.1"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<ejs>, [">= 0"])
      s.add_runtime_dependency(%q<eco>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<turn>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.1"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<ejs>, [">= 0"])
      s.add_dependency(%q<eco>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<turn>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.1"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<ejs>, [">= 0"])
    s.add_dependency(%q<eco>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<turn>, [">= 0"])
  end
end
