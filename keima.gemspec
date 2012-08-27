# -*- encoding: utf-8 -*-
require File.expand_path('../lib/keima/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["suer"]
  gem.email         = ["suetsugu.r@gmail.com"]
  gem.description   = %q{a keima ruby client}
  gem.summary       = %q{a keima ruby client}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "keima"
  gem.require_paths = ["lib"]
  gem.version       = Keima::VERSION

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end
