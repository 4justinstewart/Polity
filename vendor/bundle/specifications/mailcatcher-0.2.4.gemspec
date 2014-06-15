# -*- encoding: utf-8 -*-
# stub: mailcatcher 0.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "mailcatcher"
  s.version = "0.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Samuel Cochran"]
  s.date = "2011-05-09"
  s.description = "      MailCatcher runs a super simple SMTP server which catches any\n      message sent to it to display in a web interface. Run\n      mailcatcher, set your favourite app to deliver to\n      smtp://127.0.0.1:1025 instead of your default SMTP server,\n      then check out http://127.0.0.1:1080 to see the mail.\n"
  s.email = "sj26@sj26.com"
  s.executables = ["mailcatcher"]
  s.extra_rdoc_files = ["LICENSE", "README.md"]
  s.files = ["LICENSE", "README.md", "bin/mailcatcher"]
  s.homepage = "http://github.com/sj26/mailcatcher"
  s.rubygems_version = "2.2.2"
  s.summary = "Runs an SMTP server, catches and displays email in a web interface."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, [">= 0"])
      s.add_runtime_dependency(%q<mail>, [">= 0"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_runtime_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_runtime_dependency(%q<thin>, [">= 0"])
      s.add_runtime_dependency(%q<skinny>, [">= 0.1.2"])
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<eventmachine>, [">= 0"])
      s.add_dependency(%q<mail>, [">= 0"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_dependency(%q<thin>, [">= 0"])
      s.add_dependency(%q<skinny>, [">= 0.1.2"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<eventmachine>, [">= 0"])
    s.add_dependency(%q<mail>, [">= 0"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    s.add_dependency(%q<thin>, [">= 0"])
    s.add_dependency(%q<skinny>, [">= 0.1.2"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end
