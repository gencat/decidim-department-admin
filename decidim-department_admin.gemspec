# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

require "decidim/department_admin/version"

Gem::Specification.new do |s|
  s.version = Decidim::DepartmentAdmin.version
  s.authors = ["Oliver Valls"]
  s.email = ["oliver.vh@coditramuntana.com"]
  s.license = "AGPL-3.0"
  s.homepage = "https://github.com/decidim/decidim-module-department_admin"
  s.required_ruby_version = ">= 2.5"

  s.name = "decidim-department_admin"
  s.summary = "A decidim department_admin module"
  s.description = "This Dedicim's module produces a new \"department admin\" role which restricts the permissions of an Admin into participatory spaces of a given Area."

  s.files = Dir["{app,config,lib}/**/*", "LICENSE-AGPLv3.txt", "Rakefile", "README.md"]

  s.add_dependency "decidim-core", Decidim::DepartmentAdmin.version
  s.add_development_dependency "decidim", Decidim::DepartmentAdmin.version
  s.add_development_dependency "decidim-dev", Decidim::DepartmentAdmin.version
end
