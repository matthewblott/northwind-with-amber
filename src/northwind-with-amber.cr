require "jennifer"
# require "jennifer/adapter/postgres"

require "amber"
require "./controllers/**"
require "./mailers/**"
require "./models/**"
require "./views/**"
require "../config/*"

Amber::Server.instance.run

require "../config/application"

Amber::Support::ClientReload.new if Amber.settings.auto_reload?
Amber::Server.start