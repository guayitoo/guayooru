# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: dtext_rb 1.4.2 ruby lib
# stub: ext/dtext/extconf.rb

Gem::Specification.new do |s|
  s.name = "dtext_rb"
  s.version = "1.4.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["r888888888"]
  s.date = "2017-02-21"
  s.description = "Compiled DText parser"
  s.email = "r888888888@gmail.com"
  s.executables = ["cdtext", "dtext"]
  s.extensions = ["ext/dtext/extconf.rb"]
  s.files = [
    "bin/cdtext",
    "bin/dtext",
    "lib/dtext.rb",
    "lib/dtext_ruby.rb"
  ]
  s.homepage = "http://github.com/r888888888/dtext_rb"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Compiled DText parser"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.6"])
      s.add_development_dependency(%q<minitest>, ["~> 5.10"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.3"])
    else
      s.add_dependency(%q<nokogiri>, ["~> 1.6"])
      s.add_dependency(%q<minitest>, ["~> 5.10"])
      s.add_dependency(%q<rake-compiler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.3"])
    end
  else
    s.add_dependency(%q<nokogiri>, ["~> 1.6"])
    s.add_dependency(%q<minitest>, ["~> 5.10"])
    s.add_dependency(%q<rake-compiler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.3"])
  end
end

