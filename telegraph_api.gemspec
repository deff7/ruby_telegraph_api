# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'telegraph/api/version'

Gem::Specification.new do |spec|
  spec.name          = "telegraph_api"
  spec.version       = Telegraph::Api::VERSION
  spec.authors       = ["Sergey Malenkov"]
  spec.email         = ["def.sergey@gmail.com"]

  spec.summary       = %q{Ruby wrapper for Telegra.ph API}
  spec.description   = %q{Gem for wrapping Telegraph API}
  spec.homepage      = "https://github.com/deff7/ruby_telegraph_api"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday'
  spec.add_dependency 'faraday_middleware'
  spec.add_dependency 'virtus'
  spec.add_dependency 'dry-validation'
  spec.add_dependency 'hashie'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
