Gem::Specification.new do |s|
  s.name = %q{placeholder_image}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Dungan"]
  s.date = %q{2010-02-02}
  s.description = %q{Generate placeholder images of various sizes, colors, and text colors.}
  s.email = %q{mpd@jesters-court.net}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "lib/placeholder_image.rb"
  ]
  s.has_rdoc = false
  s.homepage = %q{http://github.com/xxx/placeholder_image}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Generate placeholder images of various sizes}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rmagick>, [">= 2.0"])
    else
      s.add_dependency(%q<rmagick>, [">= 2.0"])
    end
  else
    s.add_dependency(%q<rmagick>, [">= 2.0"])
  end
end
