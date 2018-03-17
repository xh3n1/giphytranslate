
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "giphytranslate/version"

Gem::Specification.new do |spec|
  spec.name          = "giphytranslate"
  spec.version       = '1.0.4'
  spec.authors       = ["Xheni Myrtaj (xh3n1)"]
  spec.email         = ["myrtajxheni@gmail.com"]

  spec.summary       = 'A plugin for adding Giphy GIFS on Jekyll sites'
  spec.description   = 'A plugin that translates words to gifs'
  spec.homepage      = "https://github.com/xh3n1/giphytranslate"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
