# -*- encoding: utf-8 -*-
# stub: rack-mini-profiler 0.9.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-mini-profiler"
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sam Saffron", "Robin Ward", "Aleks Totic"]
  s.date = "2014-03-13"
  s.description = "Profiling toolkit for Rack applications with Rails integration. Client Side profiling, DB profiling and Server profiling."
  s.email = "sam.saffron@gmail.com"
  s.extra_rdoc_files = ["README.md", "CHANGELOG"]
  s.files = ["CHANGELOG", "README.md"]
  s.homepage = "http://miniprofiler.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Profiles loading speed for rack applications."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 1.1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
      s.add_development_dependency(%q<activerecord>, ["~> 3.0"])
      s.add_development_dependency(%q<dalli>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<ZenTest>, [">= 0"])
      s.add_development_dependency(%q<autotest>, [">= 0"])
      s.add_development_dependency(%q<redis>, [">= 0"])
      s.add_development_dependency(%q<therubyracer>, [">= 0"])
      s.add_development_dependency(%q<less>, [">= 0"])
      s.add_development_dependency(%q<flamegraph>, [">= 0"])
    else
      s.add_dependency(%q<rack>, [">= 1.1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<activerecord>, ["~> 3.0"])
      s.add_dependency(%q<dalli>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<ZenTest>, [">= 0"])
      s.add_dependency(%q<autotest>, [">= 0"])
      s.add_dependency(%q<redis>, [">= 0"])
      s.add_dependency(%q<therubyracer>, [">= 0"])
      s.add_dependency(%q<less>, [">= 0"])
      s.add_dependency(%q<flamegraph>, [">= 0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 1.1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<activerecord>, ["~> 3.0"])
    s.add_dependency(%q<dalli>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<ZenTest>, [">= 0"])
    s.add_dependency(%q<autotest>, [">= 0"])
    s.add_dependency(%q<redis>, [">= 0"])
    s.add_dependency(%q<therubyracer>, [">= 0"])
    s.add_dependency(%q<less>, [">= 0"])
    s.add_dependency(%q<flamegraph>, [">= 0"])
  end
end
