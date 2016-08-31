$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'actionmailer-text/version'

Gem::Specification.new do |s|
  s.name = 'actionmailer-textgiri'
  s.version = ActionMailer::Text::VERSION
  s.authors = ['Daniel Doubrovkine', 'Cameron Craig', 'Simplybuilt']
  s.email = 'sentrathis96@gmail.com'
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = '>= 1.3.6'
  s.files = Dir['**/*']
  s.require_paths = ['lib']
  s.homepage = 'http://github.com/SimplyBuilt/actionmailer-textgiri'
  s.licenses = ['MIT']
  s.summary = 'Automatically insert a text/plain part into your HTML multipart e-mails using Nokogiri to parse pre-exisiting html emails'
  s.add_dependency 'actionmailer'
  s.add_dependency 'htmlentities'
end
