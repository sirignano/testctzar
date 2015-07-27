# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "compass-inuit"
  s.version = "5.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stephen Way"]
  s.date = "2013-08-07"
  s.description = "Compass extension for the inuit.css framework."
  s.email = ["stephencway@me.com"]
  s.homepage = "http://github.com/stephenway/compass-intuit"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "inuit.css for compass\u{2014}cooler than a polar bear\u{2019}s toenails"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<compass>, [">= 0.12.2"])
    else
      s.add_dependency(%q<compass>, [">= 0.12.2"])
    end
  else
    s.add_dependency(%q<compass>, [">= 0.12.2"])
  end
end
