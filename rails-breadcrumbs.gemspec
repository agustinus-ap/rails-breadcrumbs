Gem::Specification.new do |s|
  s.name = 'rails-breadcrumbs'
  s.version = '1.0.0'
  s.author = 'Francesc Esplugas'
  s.email = 'contact@francescesplugas.com'
  s.homepage = 'https://github.com/fesplugas/rails-breadcrumbs'
  s.summary = 'Breadcrumbs for Rails Applications'

  s.add_dependency('rails', '>= 3.0.0')

  s.files = Dir['lib/**/*']
  s.require_path = 'lib'
end
