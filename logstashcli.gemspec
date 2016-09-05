# -*- encoding: utf-8 -*-
require File.expand_path("../lib/logstash-cli/version", __FILE__)

Gem::Specification.new do |s|
  s.name = "logstash-cli"
  s.version = LogstashCli::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Patrick Debois"]
  s.email = ["patrick.debois@jedi.be"]
  s.homepage = "http://github.com/jedi4ever/logstash-cli/"
  s.summary = %q{CLI interface to logstash}
  s.description = %q{CLI interface to logstash}

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = "logstash-cli"

  s.add_dependency "activesupport", "4.2.6" # attempt to pin activesupport to ruby 2.0 compat
  s.add_dependency "tire", "0.6.2"
  s.add_dependency "thor", "0.19.1"
  s.add_dependency "amqp", "1.6.0"
  s.add_dependency "rack", "1.6.4"
  s.add_dependency "yajl-ruby"
  s.add_dependency "fastercsv", "1.5.5"
  s.add_dependency "json", "1.8.3"
  s.metadata['allowed_push_host'] = 'https://artifactory.ci.ops.sf.local/api/gems/rubygems-local/'
  #s.add_dependency "amqp-utils"

  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files = `git ls-files`.split("\n")
  s.executables = `git ls-files`.split("\n").map { |f| f =~ /^bin\/(.*)/ ? $1 : nil }.compact
  s.require_path = 'lib'
end

