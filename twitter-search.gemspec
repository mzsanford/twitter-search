--- !ruby/object:Gem::Specification 
name: twitter-search
version: !ruby/object:Gem::Version 
  version: 0.5.4
platform: ruby
authors: 
- Dustin Sallings
- Dan Croak
autorequire: 
bindir: bin
cert_chain: []

date: 2009-05-14 00:00:00 -07:00
default_executable: 
dependencies: 
- !ruby/object:Gem::Dependency 
  name: json
  type: :runtime
  version_requirement: 
  version_requirements: !ruby/object:Gem::Requirement 
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        version: 1.1.2
    version: 
- !ruby/object:Gem::Dependency 
  name: fakeweb
  type: :runtime
  version_requirement: 
  version_requirements: !ruby/object:Gem::Requirement 
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        version: 1.2.0
    version: 
description: Ruby client for Twitter Search.
email: dcroak@thoughtbot.com
executables: []

extensions: []

extra_rdoc_files: []

files: 
- Rakefile
- README.markdown
- TODO.markdown
- lib/trends.rb
- lib/tweets.rb
- lib/twitter_search.rb
has_rdoc: false
homepage: http://github.com/dancroak/twitter-search
licenses: []

post_install_message: 
rdoc_options: []

require_paths: 
- lib
required_ruby_version: !ruby/object:Gem::Requirement 
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      version: "0"
  version: 
required_rubygems_version: !ruby/object:Gem::Requirement 
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      version: "0"
  version: 
requirements: []

rubyforge_project: 
rubygems_version: 1.3.2
signing_key: 
specification_version: 3
summary: Ruby client for Twitter Search.
test_files: []

