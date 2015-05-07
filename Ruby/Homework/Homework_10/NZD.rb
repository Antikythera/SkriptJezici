#!/usr/bin/ruby
require './NZD_Module.rb'
include NZD

class Integer
  extend NZD
end

NZD.nzd(60, 72)
Integer.nzd(60, 72)
