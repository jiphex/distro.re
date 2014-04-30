#!/usr/bin/env ruby
require 'yaml'
require 'erb'

distrofile = 'distro.yml'
distros = YAML.load_file distrofile
template = 'distros.rhtml'
updated = File.mtime(distrofile)

erb = ERB.new(File.read(template))

File.open("index.html","w").puts(erb.result)
