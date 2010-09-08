# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jekyll}
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tom Preston-Werner"]
  s.date = %q{2010-08-24}
  s.default_executable = %q{jekyll}
  s.description = %q{Jekyll is a simple, blog aware, static site generator.}
  s.email = %q{tom@mojombo.com}
  s.executables = ["jekyll"]
  s.extra_rdoc_files = ["README.textile", "LICENSE"]
  s.files = ["History.txt", "LICENSE", "README.textile", "Rakefile", "bin/jekyll", "cucumber.yml", "features/create_sites.feature", "features/embed_filters.feature", "features/markdown.feature", "features/pagination.feature", "features/permalinks.feature", "features/post_data.feature", "features/site_configuration.feature", "features/site_data.feature", "features/step_definitions/jekyll_steps.rb", "features/support/env.rb", "jekyll.gemspec", "lib/jekyll.rb", "lib/jekyll/albino.rb", "lib/jekyll/converter.rb", "lib/jekyll/converters/identity.rb", "lib/jekyll/converters/markdown.rb", "lib/jekyll/converters/textile.rb", "lib/jekyll/convertible.rb", "lib/jekyll/core_ext.rb", "lib/jekyll/errors.rb", "lib/jekyll/filters.rb", "lib/jekyll/generator.rb", "lib/jekyll/generators/pagination.rb", "lib/jekyll/layout.rb", "lib/jekyll/migrators/csv.rb", "lib/jekyll/migrators/mephisto.rb", "lib/jekyll/migrators/mt.rb", "lib/jekyll/migrators/textpattern.rb", "lib/jekyll/migrators/typo.rb", "lib/jekyll/migrators/wordpress.rb", "lib/jekyll/page.rb", "lib/jekyll/plugin.rb", "lib/jekyll/post.rb", "lib/jekyll/site.rb", "lib/jekyll/static_file.rb", "lib/jekyll/tags/highlight.rb", "lib/jekyll/tags/include.rb", "test/helper.rb", "test/source/_includes/sig.markdown", "test/source/_layouts/default.html", "test/source/_layouts/simple.html", "test/source/_posts/2008-02-02-not-published.textile", "test/source/_posts/2008-02-02-published.textile", "test/source/_posts/2008-10-18-foo-bar.textile", "test/source/_posts/2008-11-21-complex.textile", "test/source/_posts/2008-12-03-permalinked-post.textile", "test/source/_posts/2008-12-13-include.markdown", "test/source/_posts/2009-01-27-array-categories.textile", "test/source/_posts/2009-01-27-categories.textile", "test/source/_posts/2009-01-27-category.textile", "test/source/_posts/2009-01-27-empty-categories.textile", "test/source/_posts/2009-01-27-empty-category.textile", "test/source/_posts/2009-03-12-hash-#1.markdown", "test/source/_posts/2009-05-18-empty-tag.textile", "test/source/_posts/2009-05-18-empty-tags.textile", "test/source/_posts/2009-05-18-tag.textile", "test/source/_posts/2009-05-18-tags.textile", "test/source/_posts/2009-06-22-empty-yaml.textile", "test/source/_posts/2009-06-22-no-yaml.textile", "test/source/_posts/2010-01-08-triple-dash.markdown", "test/source/_posts/2010-01-09-date-override.textile", "test/source/_posts/2010-01-09-time-override.textile", "test/source/_posts/2010-01-09-timezone-override.textile", "test/source/_posts/2010-01-16-override-data.textile", "test/source/about.html", "test/source/category/_posts/2008-9-23-categories.textile", "test/source/contacts.html", "test/source/css/screen.css", "test/source/foo/_posts/bar/2008-12-12-topical-post.textile", "test/source/index.html", "test/source/sitemap.xml", "test/source/win/_posts/2009-05-24-yaml-linebreak.markdown", "test/source/z_category/_posts/2008-9-23-categories.textile", "test/suite.rb", "test/test_configuration.rb", "test/test_core_ext.rb", "test/test_filters.rb", "test/test_generated_site.rb", "test/test_page.rb", "test/test_pager.rb", "test/test_post.rb", "test/test_rdiscount.rb", "test/test_site.rb", "test/test_tags.rb"]
  s.homepage = %q{http://github.com/mojombo/jekyll}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{jekyll}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A simple, blog aware, static site generator.}
  s.test_files = ["test/test_configuration.rb", "test/test_core_ext.rb", "test/test_filters.rb", "test/test_generated_site.rb", "test/test_page.rb", "test/test_pager.rb", "test/test_post.rb", "test/test_rdiscount.rb", "test/test_site.rb", "test/test_tags.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<liquid>, [">= 1.9.0"])
      s.add_runtime_dependency(%q<classifier>, [">= 1.3.1"])
      s.add_runtime_dependency(%q<directory_watcher>, [">= 1.1.1"])
      s.add_runtime_dependency(%q<maruku>, [">= 0.5.9"])
      s.add_development_dependency(%q<redgreen>, [">= 4.2.1"])
      s.add_development_dependency(%q<shoulda>, [">= 4.2.1"])
      s.add_development_dependency(%q<rr>, [">= 4.2.1"])
      s.add_development_dependency(%q<cucumber>, [">= 4.2.1"])
      s.add_development_dependency(%q<RedCloth>, [">= 4.2.1"])
    else
      s.add_dependency(%q<liquid>, [">= 1.9.0"])
      s.add_dependency(%q<classifier>, [">= 1.3.1"])
      s.add_dependency(%q<directory_watcher>, [">= 1.1.1"])
      s.add_dependency(%q<maruku>, [">= 0.5.9"])
      s.add_dependency(%q<redgreen>, [">= 4.2.1"])
      s.add_dependency(%q<shoulda>, [">= 4.2.1"])
      s.add_dependency(%q<rr>, [">= 4.2.1"])
      s.add_dependency(%q<cucumber>, [">= 4.2.1"])
      s.add_dependency(%q<RedCloth>, [">= 4.2.1"])
    end
  else
    s.add_dependency(%q<liquid>, [">= 1.9.0"])
    s.add_dependency(%q<classifier>, [">= 1.3.1"])
    s.add_dependency(%q<directory_watcher>, [">= 1.1.1"])
    s.add_dependency(%q<maruku>, [">= 0.5.9"])
    s.add_dependency(%q<redgreen>, [">= 4.2.1"])
    s.add_dependency(%q<shoulda>, [">= 4.2.1"])
    s.add_dependency(%q<rr>, [">= 4.2.1"])
    s.add_dependency(%q<cucumber>, [">= 4.2.1"])
    s.add_dependency(%q<RedCloth>, [">= 4.2.1"])
  end
end
