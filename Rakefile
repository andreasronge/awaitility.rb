$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'rake'
require 'rdoc/task'

require "awaitility/version"



task :check_commited do
  status = %x{git status}
  fail("Can't release gem unless everything is committed") unless status =~ /nothing to commit \(working directory clean\)|nothing added to commit but untracked files present/
end

desc "clean all, delete all files that are not in git"
task :clean_all do
  system "git clean -df"
end

desc "create the gemspec"
task :build  do
  system "gem build awaitility.gemspec"
end

desc "release gem to gemcutter"
task :release => [:check_commited, :build] do
  system "gem push awaitility-#{Awaitility::VERSION}.gem"
end

desc "Generate documentation for Neo4j.rb"
RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'doc/rdoc'
  rdoc.title    = "Awaitility.rb #{Awaitility::VERSION}"
  rdoc.options << '--webcvs=http://github.com/andreasronge/awaitility/tree/master/'
  rdoc.options << '-f' << 'horo'
  rdoc.options << '-c' << 'utf-8'
  rdoc.options << '-m' << 'README.rdoc'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

