# -*- encoding: utf-8 -*-
# stub: railroady 1.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "railroady"
  s.version = "1.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Preston Lee", "Tobias Crawley", "Peter Hoeg", "Javier Smaldone"]
  s.date = "2013-07-31"
  s.description = "Ruby on Rails 3/4 model and controller UML class diagram generator. Originally based on the 'railroad' plugin and contributions of many others. (`sudo port install graphviz` before use!)"
  s.email = ["conmotto@gmail.com", "tcrawley@gmail.com", "peter@hoeg.com", "p.hoeg@northwind.sg", "javier@smaldone.com.ar"]
  s.executables = ["railroady"]
  s.files = ["bin/railroady"]
  s.homepage = "http://github.com/preston/railroady"
  s.licenses = ["GPLv2"]
  s.rubygems_version = "2.2.2"
  s.summary = "Ruby on Rails 3/4 model and controller UML class diagram generator."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<minitest-spec-context>, [">= 0"])
      s.add_development_dependency(%q<activesupport>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<minitest-spec-context>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<minitest-spec-context>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
  end
end
