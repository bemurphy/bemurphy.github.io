# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{directory_watcher}
  s.version = "1.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Pease"]
  s.date = %q{2010-04-08}
  s.description = %q{The directory watcher operates by scanning a directory at some interval and
generating a list of files based on a user supplied glob pattern. As the file
list changes from one interval to the next, events are generated and
dispatched to registered observers. Three types of events are supported --
added, modified, and removed.}
  s.email = %q{tim.pease@gmail.com}
  s.extra_rdoc_files = ["History.txt", "README.txt", "version.txt"]
  s.files = ["History.txt", "README.txt", "Rakefile", "lib/directory_watcher.rb", "lib/directory_watcher/em_scanner.rb", "lib/directory_watcher/rev_scanner.rb", "lib/directory_watcher/scanner.rb", "version.txt"]
  s.homepage = %q{http://gemcutter.org/gems/directory_watcher}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{directory_watcher}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A class for watching files within a directory and generating events when those files change}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones-git>, [">= 1.1.1"])
      s.add_development_dependency(%q<rev>, [">= 0.3.2"])
      s.add_development_dependency(%q<eventmachine>, [">= 0.12.10"])
      s.add_development_dependency(%q<bones>, [">= 3.4.1"])
    else
      s.add_dependency(%q<bones-git>, [">= 1.1.1"])
      s.add_dependency(%q<rev>, [">= 0.3.2"])
      s.add_dependency(%q<eventmachine>, [">= 0.12.10"])
      s.add_dependency(%q<bones>, [">= 3.4.1"])
    end
  else
    s.add_dependency(%q<bones-git>, [">= 1.1.1"])
    s.add_dependency(%q<rev>, [">= 0.3.2"])
    s.add_dependency(%q<eventmachine>, [">= 0.12.10"])
    s.add_dependency(%q<bones>, [">= 3.4.1"])
  end
end
