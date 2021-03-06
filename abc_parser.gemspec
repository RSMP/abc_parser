
Gem::Specification.new do |spec|

  spec.name = 'abc_parser'
  spec.version = '0.0.1'
  spec.date = '2014-08-05'
  spec.summary = 'ABC file parser'
  spec.description = 'Converts ABC music files into Ruby objects for ' +
    'programatic use.'
  spec.authors = ["Dominic Muller"]
  spec.email = 'nicklink483@gmail.com'
  spec.files = [
    "lib/abc_parser.rb",
    "lib/abc/file.rb",
    "lib/abc/file_header.rb",
    "lib/abc/tune.rb"
  ]
  spec.add_development_dependency "rspec"
  spec.homepage = 'https://github.com/RSMP/abc_parser'
  spec.license = 'MIT'
  
end
