#!/bin/crystal

require "./config/initializers/database"
require "./src/models/*"
require "./db/migrations/*"
require "sam"

load_dependencies "jennifer"

task "foo" do
  puts "foo ran successfully"
end