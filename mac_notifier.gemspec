# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mac_notifier/version'

Gem::Specification.new do |spec|
  spec.name          = "mac_notifier"
  spec.version       = MacNotifier::VERSION
  spec.authors       = ["mitsunari ichikawa"]
  spec.email         = ["dlmforce@gmail.com"]
  spec.summary       = %q{Mac Notifier is notify "Notification Center" on apple script.}
  spec.description   = %q{very simple notification.}
  spec.homepage      = "https://github.com/dllmomi/mac_notifier"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry-byebug"
end
