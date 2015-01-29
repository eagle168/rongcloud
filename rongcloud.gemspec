# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rongcloud/version'

Gem::Specification.new do |spec|
  spec.name          = "rongcloud"
  spec.version       = RongCloud::VERSION
  spec.authors       = ["sxx"]
  spec.email         = ["sxxsea@163.com"]
  spec.description   = %q{An unofficial rong cloud gem}
  spec.summary       = %q{An unofficial rong cloud gem}
  spec.homepage      = "https://github.com/sxx1728/rongcloud_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f)  }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "fakeweb", "~> 1.3"
end
