# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'zpl/version'

Gem::Specification.new do |s|
  s.name        = 'Zpl'
  s.version     = Zpl::VERSION
  s.authors     = ['Scott deVries']
  s.email       = ['scottd@itempath.com']
  s.homepage    = 'https://github.com/scottdevries/Zpl'
  s.summary     = 'Create ZPL label strings.'
  s.description = 'Use ruby to describe labels, fields, and barcodes for printing via ZPL II.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename f }
  s.require_paths = ['lib']

end
