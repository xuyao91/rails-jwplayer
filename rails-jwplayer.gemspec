# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails/jwplayer/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-jwplayer"
  spec.version       = Rails::Jwplayer::VERSION
  spec.authors       = ["peter"]
  spec.email         = ["xy9123@126.com"]

  spec.summary       = %q{JWPlayer for rails helpers}
  spec.homepage      = "https://github.com/xuyao91/rails-jwplayer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
