# -*- encoding: utf-8 -*-
# stub: bitters 0.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "bitters"
  s.version = "0.10.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kyle Fiedler", "Reda Lemeden"]
  s.date = "2014-06-06"
  s.description = "Base styles for Web design"
  s.email = ["support@thoughtbot.com"]
  s.executables = ["bitters"]
  s.files = ["bin/bitters"]
  s.homepage = "http://github.com/thoughtbot/bitters"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Base styles for Web design"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<bourbon>, [">= 3.2"])
      s.add_runtime_dependency(%q<sass>, [">= 3.2"])
      s.add_runtime_dependency(%q<thor>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<bourbon>, [">= 3.2"])
      s.add_dependency(%q<sass>, [">= 3.2"])
      s.add_dependency(%q<thor>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bourbon>, [">= 3.2"])
    s.add_dependency(%q<sass>, [">= 3.2"])
    s.add_dependency(%q<thor>, [">= 0"])
  end
end
