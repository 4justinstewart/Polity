# -*- encoding: utf-8 -*-
# stub: rack-contrib 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-contrib"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["rack-devel"]
  s.date = "2010-10-19"
  s.description = "Contributed Rack Middleware and Utilities"
  s.email = "rack-devel@googlegroups.com"
  s.extra_rdoc_files = ["README.rdoc", "COPYING"]
  s.files = ["COPYING", "README.rdoc"]
  s.homepage = "http://github.com/rack/rack-contrib/"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "rack-contrib", "--main", "README"]
  s.rubygems_version = "2.2.2"
  s.summary = "Contributed Rack Middleware and Utilities"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 0.9.1"])
      s.add_development_dependency(%q<test-spec>, [">= 0.9.0"])
      s.add_development_dependency(%q<tmail>, [">= 1.2"])
      s.add_development_dependency(%q<json>, [">= 1.1"])
    else
      s.add_dependency(%q<rack>, [">= 0.9.1"])
      s.add_dependency(%q<test-spec>, [">= 0.9.0"])
      s.add_dependency(%q<tmail>, [">= 1.2"])
      s.add_dependency(%q<json>, [">= 1.1"])
    end
  else
    s.add_dependency(%q<rack>, [">= 0.9.1"])
    s.add_dependency(%q<test-spec>, [">= 0.9.0"])
    s.add_dependency(%q<tmail>, [">= 1.2"])
    s.add_dependency(%q<json>, [">= 1.1"])
  end
end
