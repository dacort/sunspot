require File.join(File.dirname(__FILE__), '..', 'lib', 'sunspot', 'gem_tasks')

Sunspot::GemTasks.new do |s|
  s.name = 'sunspot'
  s.version = Sunspot::VERSION
  s.executables = ['sunspot-solr', 'sunspot-configure-solr']
  s.email = 'mat@patch.com'
  s.homepage = 'http://outoftime.github.com/sunspot'
  s.summary = 'Library for expressive, powerful interaction with the Solr search engine'
  s.description = <<TEXT
Sunspot is a library providing a powerful, all-ruby API for the Solr search engine. Sunspot manages the configuration of persistent Ruby classes for search and indexing and exposes Solr's most powerful features through a collection of DSLs. Complex search operations can be performed without hand-writing any boolean queries or building Solr parameters by hand.
TEXT
  s.authors = ['Mat Brown', 'Peer Allan', 'Dmitriy Dzema', 'Benjamin Krause', 'Marcel de Graaf', 'Brandon Keepers', 'Peter Berkenbosch', 'Brian Atkinson', 'Tom Coleman', 'Matt Mitchell']
  s.rubyforge_project = 'sunspot'
  s.files = FileList['[A-Z]*', '{bin,installer,lib,spec,tasks,templates}/**/*', 'solr/{etc,lib,webapps}/**/*', 'solr/solr/{conf,lib}/*', 'solr/start.jar']
  s.add_runtime_dependency 'solr-ruby', '0.0.8'
  s.add_runtime_dependency 'daemons', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 1.1'
  s.add_development_dependency 'ruby-debug', '~> 0.10'
  s.add_development_dependency 'technicalpickles-jeweler', '1.2.1'
  s.extra_rdoc_files = ['README.rdoc']
  s.test_files = FileList['spec/**/*_spec.rb']
  s.rdoc_options << '--webcvs=http://github.com/outoftime/sunspot/tree/master/%s' <<
                    '--title' << 'Sunspot - Solr-powered search for Ruby objects - API Documentation' <<
                    '--main' << 'README.rdoc'

end
