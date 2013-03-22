# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'soundmanager-rails/version'

Gem::Specification.new do |gem|
  gem.authors       = ["glaszig"]
  gem.email         = ["glaszig@gmail.com"]
  gem.description   = %q{SoundManager2 JavaScript Library for Rails >= 3.1}
  gem.summary       = %q{Wraps SoundManager2 by Scott Schiller in a gem for use with Ruby on Rails}
  gem.homepage      = "https://github.com/glaszig/soundmanager-rails"
  gem.version       = Soundmanager::Rails::VERSION

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "soundmanager-rails"
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
end
