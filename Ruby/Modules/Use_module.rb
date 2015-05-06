#!/usr/bin/ruby
require './Hello'
include Hello

Hello.SayHello("Stefan")
puts "PI = #{Hello::PI}"
