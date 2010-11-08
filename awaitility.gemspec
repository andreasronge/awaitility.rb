lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'awaitility/version'


Gem::Specification.new do |s|
  s.name = "awaitility"
  s.version = Awaitility::VERSION
#  s.platform = Gem::Platform::CURRENT  # will probably support  C Ruby via RJB also in the future
  s.authors = "Andreas Ronge"
  s.email = 'andreas.ronge@gmail.com'
  s.homepage = "http://github.com/andreasronge/awaitility/tree"
  s.rubyforge_project = 'awaitility'
  s.summary = "Testing asynchronous systems from JRuby"
  s.description = <<-EOF
Testing asynchronous systems is hard. Not only does it require handling threads, timeouts and concurrency issues, but the intent of the test code can be obscured by all these details. Awaility is a DSL that allows you to express expectations of an asynchronous system in a concise and easy to read manner.
EOF

  s.require_path = 'lib'
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(Gemfile awaitility.gemspec)
  s.has_rdoc = true
  s.extra_rdoc_files = %w( README.rdoc )
  s.rdoc_options = ["--quiet", "--title", "Awaitility", "--opname", "index.html", "--line-numbers", "--main", "README.doc", "--inline-source"]
  s.required_ruby_version = ">= 1.8.7"
end
