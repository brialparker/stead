# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "stead"
  s.version = "0.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jason Ronallo"]
  s.date = "2011-12-14"
  s.description = "Converts CSV files of a specific schema into EAD XML."
  s.email = "jronallo@gmail.com"
  s.executables = ["csv2ead"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rvmrc",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/csv2ead",
    "examples/ncsu.rb",
    "lib/stead.rb",
    "lib/stead/ead.rb",
    "lib/stead/error.rb",
    "lib/stead/stead.rb",
    "lib/stead/templates/ead.xml",
    "lib/stead/templates/ead.xsd",
    "lib/stead/templates/ncsu_ead.xml",
    "stead.gemspec",
    "test/container_lists/mc00000-ead-series.xml",
    "test/container_lists/mc00000-ead.xml",
    "test/container_lists/mc00000_container_list.csv",
    "test/container_lists/mc00000_container_list_bad_container_type.csv",
    "test/container_lists/mc00000_container_list_no_series.csv",
    "test/container_lists/mc00084_container_list_empty_header.csv",
    "test/container_lists/snyderman3.csv",
    "test/container_lists/wheless.csv",
    "test/helper.rb",
    "test/test_duplicate_series_title.rb",
    "test/test_ead_bad_container_type.rb",
    "test/test_ead_no_series.rb",
    "test/test_ead_series.rb",
    "test/test_stead.rb",
    "test/test_wheless.rb",
    "watchr.rb"
  ]
  s.homepage = "http://github.com/jronallo/stead"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Spreadsheets To Encoded Archival Description"
  s.test_files = [
    "examples/ncsu.rb",
    "test/helper.rb",
    "test/test_duplicate_series_title.rb",
    "test/test_ead_bad_container_type.rb",
    "test/test_ead_no_series.rb",
    "test/test_ead_series.rb",
    "test/test_stead.rb",
    "test/test_wheless.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, [">= 0"])
      s.add_runtime_dependency(%q<trollop>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<ruby-debug>, [">= 0"])
      s.add_development_dependency(%q<equivalent-xml>, [">= 0"])
    else
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<trollop>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<ruby-debug>, [">= 0"])
      s.add_dependency(%q<equivalent-xml>, [">= 0"])
    end
  else
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<trollop>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<ruby-debug>, [">= 0"])
    s.add_dependency(%q<equivalent-xml>, [">= 0"])
  end
end

