#!/bin/crystal

require "./config/database.cr"
require "sam"
load_dependencies "jennifer"
require "./db/migrations/*"

task "foo" do
  puts "foo ran successfully"
end
