# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bluestorm_sms/version'

Gem::Specification.new do |spec|
  spec.name          = "bluestorm_sms"
  spec.version       = BluestormSms::VERSION
  spec.authors       = ["gavin.li"]
  spec.email         = ["gavin.li1986@gmail.com"]
  spec.summary       = %q{蓝色风潮短信发送接口}
  spec.description   = %q{蓝色风潮短信发送接口}
  spec.homepage      = "https://github.com/flypiggy/bluestorm_sms"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "iconv", "~> 1.0"
end
