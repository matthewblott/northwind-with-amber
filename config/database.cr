require "jennifer"
require "jennifer_sqlite3_adapter"
# require "jennifer/adapter/sqlite"
require "sam"

# This allows for easy test db use when running the `crystal spec` command
{% if @top_level.has_constant? "Spec" %}
  APP_ENV = "test"
{% else %}
  APP_ENV = ENV["APP_ENV"]? || "development"
{% end %}

Jennifer::Config.configure do |conf|
  conf.adapter = "sqlite3"
  conf.host = "."
  conf.db = "northwind_development.sqlite3"
  # conf.read("config/database.yml", APP_ENV)
  # conf.from_uri(ENV["DATABASE_URI"]) if ENV.has_key?("DATABASE_URI")
  # conf.pool_size = (ENV["DB_CONNECTION_POOL"] ||= "5").to_i
  # conf.logger.level = APP_ENV == "development" ? Log::Severity::Debug : Log::Severity::Error
end
