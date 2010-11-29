Gem::Specification.new do |s|
  s.name = 'breadcrumbs'
  s.version = '1.0.0'
  s.author = 'Francesc Esplugas'
  s.email = 'contact@francescesplugas.com'
  s.summary = 'Breadcrumbs for Rails'

  s.add_dependency('rails', '>= 3.0.0')

  s.files = Dir['lib/**/*']
  s.require_path = 'lib'
end
