#!/bin/bash

ruby -rrubygems -e 'gemspec_path = Dir.glob("*.gemspec").first; version = "v" + Gem::Specification.load(gemspec_path).version.to_s; versions = IO.popen("git tag -l").read.split("\n"); exit(1) if versions.include?(version)'
