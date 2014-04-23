#!/usr/bin/env ruby
require 'yaml'
require 'erb'

distros = YAML.load_file 'distro.yml'
template = 'distros.rhtml'

erb = ERB.new(File.read(template))

File.open("index.html","w").puts(erb.result)
