MRuby::Gem::Specification.new('mruby-regression-tests') do |spec|
  spec.license = 'MIT'
  spec.author  = 'Internet Initiative Japan'

  # dependencies here can be removed if you don't need to test them.
  spec.add_dependency "mruby-fiber"
  spec.add_dependency "mruby-time"  # for #2641
end
