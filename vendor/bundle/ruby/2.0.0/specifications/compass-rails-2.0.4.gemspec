# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "compass-rails"
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Scott Davis", "Chris Eppstein", "Craig McNamara"]
  s.date = "2015-01-09"
  s.description = "Integrate Compass into Rails 3.0 and up."
  s.email = ["jetviper21@gmail.com", "chris@eppsteins.net", "craig.mcnamara@gmail.com"]
  s.homepage = "https://github.com/Compass/compass-rails"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Integrate Compass into Rails 3.0 and up."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<compass>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<sprockets>, ["< 2.13"])
      s.add_runtime_dependency(%q<sass-rails>, ["<= 5.0.1"])
    else
      s.add_dependency(%q<compass>, ["~> 1.0.0"])
      s.add_dependency(%q<sprockets>, ["< 2.13"])
      s.add_dependency(%q<sass-rails>, ["<= 5.0.1"])
    end
  else
    s.add_dependency(%q<compass>, ["~> 1.0.0"])
    s.add_dependency(%q<sprockets>, ["< 2.13"])
    s.add_dependency(%q<sass-rails>, ["<= 5.0.1"])
  end
end
