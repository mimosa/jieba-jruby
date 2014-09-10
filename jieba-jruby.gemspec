# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jieba/version'

Gem::Specification.new do |spec|
  spec.name          = "jieba-jruby"
  spec.version       = AnsjSeg::VERSION
  spec.authors       = ["Howl王"]
  spec.email         = ["mimosa@shareday.com"]
  spec.description   = %q{Jieba for jRuby}
  spec.summary       = %q{Jieba for jRuby}
  spec.homepage      = "https://github.com/huaban/jieba-analysis"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
